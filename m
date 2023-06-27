Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA323EB64D9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jun 2023 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLcLAnt6CkbnwDJHhYG/3Mmc93OBeWVDUZJAB0Vdsfc=; b=gxLM4FwE8w+Yix
	jlIezYYlof60XJkLPzoZt18zXiRcXEnsCoKmd+0Ea0giE+vVocfjc6a2NFlTh7pyFY79WgZ3RXbML
	wo3ucx0PFAgHWqhr0WtceLV9LWBhYf2A1tFovzY5J06nX4G+qV75KhTyxcv1JVqttexyz/S5peGGW
	IfS1twIknitu2Y08XElWH8gE559ljswcWmlU510NM56HQWEfOOEsWc0JOinfj9W2bVeYEnKAZgpOc
	gb7EU/2q9RzaRBc6QNSzmsAq6l2IKPucqgNNZBWHA9hXUX3vd5RtH+j6MLzestkTcShqCzgXxQLqd
	eDTRNE3MfMwz+AUQJKQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEDBN-00Dnz7-0o;
	Tue, 27 Jun 2023 18:12:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEDBL-00Dnyk-08
	for linux-phy@lists.infradead.org;
	Tue, 27 Jun 2023 18:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687889570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gLYfuVlAx6gHqUqwGmp9BqNE2UCUddYBeTQuctpCKSw=;
	b=KJWrxYHawDp5StncUyRgSYFPs4re3gn316V858zhvQ8Xmp0pdqhxpoAe0QFdKGgmlVk/Qo
	YJnoEdTpRIpnMfrl8X6/6j/+thER4Mg+0Gy2mIBPb9vho2rCT82a4uvGy47J6nwMi7aeX/
	o8/ufeFEOogtrsxyMSHobbCEQwgoQeA=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-nbMUeG8kNLebLLCEnS8Lug-1; Tue, 27 Jun 2023 14:12:49 -0400
X-MC-Unique: nbMUeG8kNLebLLCEnS8Lug-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7659c6caeaeso311775685a.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Jun 2023 11:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687889568; x=1690481568;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLYfuVlAx6gHqUqwGmp9BqNE2UCUddYBeTQuctpCKSw=;
        b=f9QQp6liAphVKwKyo7N4uY0hHLWRT0A/OYkRN8LNeb3A+rWNolwqHJ1kp+oMLCNLYQ
         +SExPZ1n4D4HyKo+dOEO5eXVwskWpEX1gJ5DinTZ/i2b5MXYhFlO1OMIzOUk8tPyWAoP
         zadFCsSwzbmyAlNujpqWyCK2ZcH1sSRRTe+X9cjG9qnFKUGbkyYHSfZQ+CfyRkfFB4mK
         0rQv5Yu6xJF23qcmM8IXMTnZTnvL4gCFZT4v4r0ck5AH/xe4XMfMisaYjInzy738UEeC
         fu+OvB4Y21mNWpM5TaAtOckpDTKeurIYs7RAJf9yBi//ZQ2jELyu1Iy+wn8uv+u6xQUm
         Wwtg==
X-Gm-Message-State: AC+VfDzuGy+kPQ+uesHbDB+0Kx+r01qYlvw8dN7eWVazz6wW8vtyzCmG
	wlw6OBUmC5HiOmjdmYL0bglM5+e7M1aFHF1wEvShAtoT3PRu3AojAvVw1XqTcDD0w5rxnJzIHwp
	SrRNBzdBSfBOMKGq8eI/P5h1+dd0KzNGYdg==
X-Received: by 2002:a05:620a:1923:b0:765:4f29:33e4 with SMTP id bj35-20020a05620a192300b007654f2933e4mr14462113qkb.30.1687889568387;
        Tue, 27 Jun 2023 11:12:48 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5omgM73cyuNOg3K2U+xkrX/vEYLoH9rMgYCcCBZ7gpeyA8WQyhkz9fJZfBmu2POAI/DSYWXw==
X-Received: by 2002:a05:620a:1923:b0:765:4f29:33e4 with SMTP id bj35-20020a05620a192300b007654f2933e4mr14462100qkb.30.1687889568179;
        Tue, 27 Jun 2023 11:12:48 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id h15-20020ae9ec0f000000b0075b053ab66bsm4138869qkg.50.2023.06.27.11.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 11:12:47 -0700 (PDT)
Date: Tue, 27 Jun 2023 14:12:45 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/3] phy: qcom-snps-femto-v2: add system sleep PM ops
Message-ID: <ZJsmnTKFJMb4rBeR@fedora>
References: <20230622194021.80892-1-athierry@redhat.com>
 <20230622194021.80892-3-athierry@redhat.com>
 <52qapxj7sdearduro3iiqqpekrltc5zviwgq3gz4j4lne6cp5b@phikpenjras3>
MIME-Version: 1.0
In-Reply-To: <52qapxj7sdearduro3iiqqpekrltc5zviwgq3gz4j4lne6cp5b@phikpenjras3>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_111251_153782_15C704FB 
X-CRM114-Status: GOOD (  10.08  )
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

Writing another email to not muddy the waters in the previous email.

I discovered that the femto PHY PM count doesn't seem to be right. Even
when the dwc3 core runtime suspends and calls
phy_pm_runtime_put_sync(dwc->usb2_generic_phy) [1], the count equals 1
after that and the PHY is not runtime suspended.

This is because on boot, the count is incremented twice because
phy_power_on() is called twice:

First:
phy_power_on+0x120/0x184
dwc3_core_init+0x68c/0xda4
dwc3_probe+0xc84/0x1304

Second:
phy_power_on+0x120/0x184
usb_phy_roothub_power_on+0x48/0xa0
usb_add_hcd+0x94/0x604
xhci_plat_probe+0x4bc/0x6e4
xhci_generic_plat_probe+0xa0/0x104

That makes the femto PHY runtime PM impossible to test at the moment. I'm
not sure if this should be fixed on the dwc3 side or the xhci side, but
this should probably be a topic for another patch series.

Best,

Adrien

[1] https://elixir.bootlin.com/linux/latest/source/drivers/usb/dwc3/core.c#L2005


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
