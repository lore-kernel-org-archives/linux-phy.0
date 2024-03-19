Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D62E8C54E68
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 09:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64ZCVJeh7eY+lMNka3zKaafhoJbxf9O7VBKp5CCtxdA=; b=pAfCemyCAhTYp7
	rFUC+OL4su4frQcfE79bh4+n9zC+c7HZAUwdnr3dvpZ/O2loSL/2+J90Yyy2UqMKuPBSe4lZD4GNe
	A2apeCH1ptJ2dp+9lpYRnpL2C/tGoONrfyOBRZ07FxQqw86EVxCcQakDSdckRIrhJ3s08p8tp4TOt
	REg/g/B7AYRM9LAhne86iCU5BBHt02j0W3RQgcDAsvOYbySpKNadf+dT7NPUuOymid+ylK79UbLeI
	RQHAsJJtoeNOfsi1UzwwqZhYItr50gFIRWuwzSMqLYrm/mJPtE5/pBprUP3mHm66xTVypwUFE6HvZ
	lwDYyYD23/8dIzM6q62Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVsj-0000000C6xw-49NJ;
	Tue, 19 Mar 2024 09:35:41 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVsa-0000000C6qi-26Jc
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 09:35:34 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-609fc742044so57979977b3.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 02:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710840929; x=1711445729; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xR46scEd5OGiZdVCXg0rQe3a9fCq5Vz9qpEb1ZYc0XU=;
        b=sFew1kRhh3J5Zm0+/994AKF+1nLes29e6kFHTIPxn1RMRc9YJMK3ZShAQDZsaxw6sU
         quFa1KfqTL6yhDorLOQq8vGdVRwg63HxGFA8mYDCRiZsCKMyez3trwojWbtbgWZxHnWD
         0/VfZwgjzD4Po6Fa941akifYYw0BMFk1RPb4tUGOvp+wxYoBSPkDcB8V0ZwHi8g3ATB0
         LmYFFajRGAtUfw4Grld+epQlwEDZ2ggGYEkmopcSO9ARFVVMqt2AefgRlCKaBmMqxBQI
         JqPOR5bIy65cHePC4PrX/ENwk5OIpcHdpRqTbwaHCqGGv58SnAaNn8WI0MEG8V+s9hOu
         yeUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710840929; x=1711445729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xR46scEd5OGiZdVCXg0rQe3a9fCq5Vz9qpEb1ZYc0XU=;
        b=CzbcQkS1ra8C4yqdKbMHC3CdbyJIzDVxRufs852muqSHdpuqkZ/dEszd38/nQ5WyU+
         o2hI7n+AYy33CNrmRbP1jfAiVHG2oJI/HtmEtCSP3CL0x98yLxOze7JQX7BfboQHcpeG
         lUUUoEXMyxC+RbHthu8fKj0aUfrEcWmTP9Aj1AE3A3XkFJuS/ueGpbvnEDKP+13fKhqx
         I24pxC3ylTToFdx/zi3s1tfHPHZ1dcjIg/66wDqRH1A9YSiudxYxsMCUaM+3RAvj4TeB
         7uwpFhtm/TXzRkhiqIcH+CmLQKfDSl1WYoErB/O3gzVYelANX67zvO636/Qoy2pG52P/
         Vr6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWb8l7UOANnE72X+oMM7nZHpnajCtq6+dzvRzps4BBj4LncZYF7cXBXBgOsfxSEgU7+KHlS1DiH0Yi+F1SVVcKa8cqO80JAIuBlx5odzg==
X-Gm-Message-State: AOJu0Yxr51Twjm9rKxFJa8GOKG8BYea0tbrtTkdmC0DDKLq4do5pwZ97
	36oGIoyNc8owXcet4jXlJFH70iRxvHT+lUgcUBUQUCvc0MIFONGHOOTMyPebA45kP00MSzp+BNw
	uLv0vtRHXby1ryZGjA+S4p0fYB+aWZvOv4FgL6g==
X-Google-Smtp-Source: AGHT+IH99r/kvvmJRAw/ZWjt48XmIun30VNYQDPLxn70UqEVweorAxmCjp8Gd6tgaqNqP65M7MNy+IGg5wrYdgB82h4=
X-Received: by 2002:a0d:f003:0:b0:60c:c986:5ea with SMTP id
 z3-20020a0df003000000b0060cc98605eamr13991538ywe.42.1710840928785; Tue, 19
 Mar 2024 02:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
In-Reply-To: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 11:35:17 +0200
Message-ID: <CAA8EJpojQg2BHvR5kZtRxyXWRKy6zV=88_bdcuMH+QE-n4k73A@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add USB Support on Qualcomm's QDU/QRU1000 Platform
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_023532_690081_6E1B0837 
X-CRM114-Status: GOOD (  12.33  )
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

On Tue, 19 Mar 2024 at 11:08, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.
>
> ---------
> Changes in v2:
> * Dropped extra lines
> * Sorted the tables alphabetically
> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120215.16845-1-quic_kbajaj@quicinc.com/

So, this is v2, but you didn't mark patches as v2. Please use b4 for
sending patches. It can handle patch revisions automatically.

>
> Komal Bajaj (4):
>   dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
>   dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
>   dt-bindings: usb: dwc3: Add QDU1000 compatible
>   phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
>
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  2 +
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |  1 +
>  .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 49 +++++++++++++++++++
>  4 files changed, 55 insertions(+)



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
