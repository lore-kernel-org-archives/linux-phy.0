Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BE5EC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 20:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8gb4lKhbFflDHP759CdY6Fn2OCHOk65ZFpFPPAf4Fg=; b=ciYMpShd77i5Z+
	GWU7bJpTaJz9Es0SRKDAphX1jGq4CuFTKQ3zZYuOkPmC0yLfKjcuY+womrMDkUPDE4cuQfy/lHmLA
	cOiu26/EmUDXgf7nXSiQeo7R5wE5PiZP7dBZSUSwj5PDiDgWlMKuieY3rYebhqgy7ghdzvzwwoiTa
	D6IY75T/FeCQeTGaOQeyPH8AyHO9hOqogTl3Y5E0CVVI8b7ngc/NgIopmkdSsPqh5yYTn/cDf0nYo
	6aKyl/sxRwU4uPm6ApProAKFv2XTvbJbjPfOqIhigAJWizoSW/Q6pXcoocDF5IUGzAZJ57Q39cyPp
	gtNRhZzLwbjwJIDRbhJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSZ5-00000009llZ-300K;
	Mon, 15 Apr 2024 20:04:31 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSZ2-00000009lk9-33JJ
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 20:04:29 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-61aaf71c495so21499877b3.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 13:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713211467; x=1713816267; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x+n4yDNeHcrTCJc7XCA965ghIKCFi6oK1ygO6iYz34Q=;
        b=FjKvfOCKa97mDj6dEX4ZG+SQxvAyfJVdv5ytO9hWMfqdkGMXkp5fVpxcOTY0i+XsuS
         GQpr+faQtWEvHEaYpY549ToZtfha0mQHAK9mykhRqMVRpRFWKtzbNtS5gh8o7YHVDNQA
         DaGEjdlpK0EQlpcVQuYlmeMzNrmR55Rm6/AbtwM+cVpcUgTsauQF31mRy9sDmoG3q8/2
         ASNKHQw4fRX1QoQvQGajRwTUvNZoIzEiQQWXDzHy+6SH9tm8ga6H8GVd2ELHhsmA3PwL
         oCVNDHTismiPc5tE/0F83FV4K3Vtbbt43eL2cPkbY83lfJYIEbPBZU3hfyfzPWLcBybh
         Jwhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713211467; x=1713816267;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+n4yDNeHcrTCJc7XCA965ghIKCFi6oK1ygO6iYz34Q=;
        b=jPZqcKpvbIbYZAo/YHVhBiCFeP1icNuIShrGpDyqAihBqejaQJf3EKymNwDmyNsrwc
         7IdbO+Yl+uh5fnUFztp5t5m1vrBvP/0glB6VqnVehV7j0RFdyz1S/VyKGiuXzK//7v2s
         CfrRwRBYGeFCmpekpClo6VETvcgvlijQlVQJVbGo0AJncBFUj4RUB6/rivzMAvX191lR
         PvsyQ7HX7LT0S1rhbAGAzSRAZ2KZJti39Yk+kuW+Edcuiq7qDgxLad3iOfVJHeqt52bl
         ObN+P8p4k5/TsoUfez9anFMK1yrS+Pqi0qGKBKtk5uVOu0WlFPnfq2qUFcPWVLCSAEwT
         uKMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWx8Z29/QgKa+JRF+u8WZYRnjDe9xG6x897DwzPed1vAXJhWx/jUKlGHts1Hld7dGzKLSoUYQG/x/UlzAE5YO7+zwFEY0elMSvMW24GBw==
X-Gm-Message-State: AOJu0Yz00rg6yCSMgVvV+VCbGp87H8v+kq4ihFLe9VA4PKSoZqzpk4m0
	EAbKt6KpqKdbBaXMhEJej5AsWemsbwsIb06auScwekDTybf9+MokesIfT+UH9u4hHZjsr6ZfsC0
	+Vl7ICpCxWDHlIWtD7TYJhquoNDBwl5wK3rPQxw==
X-Google-Smtp-Source: AGHT+IFgChYQoIbtXVFNn5dpONcRCuNNKjt9lSve7LdO+2SQ5EoJ4jqt3753eEsEcQ7mld6BIqWcJDJtBnxGz7Zk5/k=
X-Received: by 2002:a25:2e0d:0:b0:dc6:dd80:430e with SMTP id
 u13-20020a252e0d000000b00dc6dd80430emr9293179ybu.27.1713211467602; Mon, 15
 Apr 2024 13:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-3-mr.nuke.me@gmail.com>
In-Reply-To: <20240415182052.374494-3-mr.nuke.me@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Apr 2024 23:04:16 +0300
Message-ID: <CAA8EJpq-UOd4dcuLyEvJNW4zckSGq1LSdq4eDMWPHX_98U8F=A@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_130428_837747_21BF2CEB 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 15 Apr 2024 at 21:21, Alexandru Gagniuc <mr.nuke.me@gmail.com> wrote:
>
> The IPQ9574 has four PCIe "pipe" clocks. These clocks are required by
> PCIe PHYs. Port the pipe clocks from the downstream 5.4 kernel.
>
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  drivers/clk/qcom/gcc-ipq9574.c | 76 ++++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
