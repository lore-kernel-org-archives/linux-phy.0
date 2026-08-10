Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E0F4C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 21:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlbgmvN/iI40DLoSqYBm7qiAOQrBIpxZ5KrN0lIkgps=; b=pd+vOisNnQnFMq
	HSDG74K6pnHgSe27qnNBMHgsQlxAXqFXMWnwc4IcMdA2Wsn5z2qHuu4F6GeLdCeDE0mpPtvRPla//
	UOiVQhSLW2obsBpYCWwfO5RXhAju7pkDTENHnF58nTdIxj1DL8/3ozQ+lsr+ZcGZ0DSsGyzstLVc8
	LFeAsE7VfEHT+idttFG3/okn3sp6KegwvPmL5xVqaeqF6HcuLElMb2HsPAzoA5KC8HmQhe+UhPT/a
	hsMcuNMc0VygbW3OceDOtZui/7xkPNKGBQSfN+YFncdyxi665WeflHdorVCFUvOvFlV0F2YNZWkHv
	4INI6MAcX/xexgCUTi2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtY25-0000000CwT5-0lZF;
	Mon, 10 Aug 2026 21:59:45 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtY23-0000000CwRj-1fre
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 21:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1786399182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HM0jDu4T7yH1UL3y9Xop+wHBl7p45KQE498sSn5/W1w=;
	b=Vpm7vIiy0aEOzqwV809u5s4BpQptXvNph2H1XR9ATGpQy2b4eKUvio55+XwuHUxxyMlbCA
	MK3d25fgQkjYC2AWwYXIXeBm4ONCYe+sOIJ6XgW8WsEHQgxjD/jqZgXUkgwZ+WqTpwxr+j
	hZ/RjFCNfYmKOMDHovIhly5Y3KfFtTY=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-546-S2qMwldTNCeIezqzd2WRgA-1; Mon, 10 Aug 2026 17:59:41 -0400
X-MC-Unique: S2qMwldTNCeIezqzd2WRgA-1
X-Mimecast-MFC-AGG-ID: S2qMwldTNCeIezqzd2WRgA_1786399180
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-81e92ddc199so84470497b3.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 14:59:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786399180; x=1787003980;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=HM0jDu4T7yH1UL3y9Xop+wHBl7p45KQE498sSn5/W1w=;
        b=RXPXCugM91aIcciuuxRNbQlp8VDL+MLSOjfkDgI7BP9xzDRlbF00sOonfpRYKUjX4E
         MXUPi5t4L9Jqjxk2saeHwq4NZ2g6HtDDTzl+mg7yDdcMV7HaPDLxQ18xYl+WszKrHib4
         dgql1YSp77oQRyqcfHinweBjxX/GX5KORuv7AHxQ+ECM1O1/9G7KyE0Wn62z1Pu9Ck0T
         fsGnqcI1eJ1dh/Ds2V0l8EC20uIK/F7uBgFA5jf+H9/qFQFBpRlavUksDVuYnX2r8mtW
         kIWk2zWp3mv9trszMzy3gii1TqdHugXzVM9A+g+ITnJphd+wW35GckS5hmhyKVQuM4JC
         DslQ==
X-Forwarded-Encrypted: i=1; AHgh+RqVWYznVRFYwPX2CdSZxIwwhXlFa7FBRyAZV91Mw2uV75R1kDktNcbcm3xVfjM1FJlWi3YIuKF8g+U=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfdzLaFe39PKhijevBLUxLjw7CH9ciNbcsNtarBT+kaHB3uFda
	IvUElrbsEhLkFy3XK/0NrD0HaS2mvfPu5NX/2lCl0vdASc9qCpWK/mqhYLODT1k0dsWEecGb1SE
	P1NyUNP2azqlIiMs8M/Q3EqTgkSw1GjkQK+EUadaRFeHZJdhJ31L88fout1jQOnBB2HI=
X-Gm-Gg: AR+sD11QFbofPXQVotu/mqbUP4xlotO1SMuczK9dbs2QoFeaGXzchK2587NO48qG8W3
	y//6liE+aRTstj3cC31QUHroSth5+dh7pymKYyAaiUGaXV0+MAUT1zMry8N9GSUwVq61dpmNwFF
	1V8FGN+lxOL1KagNqfXOeiVr6qRur6aMGz+26Ytz25wLNH0ZsaF6E4kYxWmUZJR4y00AN6PbbVW
	j1onsg2vLA3cQjVH4KqJqj5RumY0aECJa2ttYuZ044NWrZ+SI2GdH6aovOf5Jxh86HYoEgwQCa4
	mQ53l9HN4kaQd/B70eEg+8u1c0ZpnrRfFS2cd7z9SD3iA+fNDQyaIWiJemoxrQJ6Yn1itJXjFf2
	+W3Ui+d4bwbHedoIKKUykjtenp9agz81re7M=
X-Received: by 2002:a05:690c:2506:b0:81e:eb11:6e5f with SMTP id 00721157ae682-820229c195cmr279357047b3.34.1786399180121;
        Mon, 10 Aug 2026 14:59:40 -0700 (PDT)
X-Received: by 2002:a05:690c:2506:b0:81e:eb11:6e5f with SMTP id 00721157ae682-820229c195cmr279356737b3.34.1786399179584;
        Mon, 10 Aug 2026 14:59:39 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-823efbf208esm64134367b3.10.2026.08.10.14.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 14:59:38 -0700 (PDT)
Date: Mon, 10 Aug 2026 17:59:36 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v10 10/12] clk: zte: Introduce a driver for zx297520v3
 LSP clocks
Message-ID: <anpJyOYpFBe6ah0I@redhat.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-10-63846490712c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260810-zx29clk-v10-10-63846490712c@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: b0XmStt5DcvTGEXUSfNczr1QO5fxOZWCgTtuwP8l5KM_1786399180
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_145943_512364_2E8BB065 
X-CRM114-Status: GOOD (  12.75  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Aug 10, 2026 at 12:28:29AM +0300, Stefan D=F6singer wrote:
> "LSP" is ZTE's term for this part of the SoC, I suspect it stands for
> "low speed peripherals". The main UART is here, together with the flash
> controller and more surplus proprietary timers.
> =

> It also has one more I2C controller that supposedly connects to a
> battery charger, SPI for displays and I2S for analog telephones. The
> boards I have don't have any of these components though.
> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
