Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A35CD342F
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 11:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lykr85qQIJaPxVFiP4YfcQH7mZe2HBHDfnCLOPbglGE=; b=hhikFrQ88/PBX1
	/5TSje2+hlYaKq7dtdLR+iaE+VrdPS03wqrjBLNPx6Vb/gKZhjcqNgwaISOs7L7zPvCruaI3U5IKv
	lNFKseiINCQh/+I1Dnml3uCsQs46spadmQY3mUQhP4pat97rWX1c/KFc2koWXQ6i1a/79OlHmFhta
	iTM+KlrubIxo6bGWpfV5n7cNNXV9HqTck8hnpvYIdoIg91maSRoIBzJ8goZExnXEvnAUCDPT7Su0c
	mDINDFCZdWqL6I1+raJDj/Klke9vfqzeGOMj17NpcDwf7k/fP/tipaPxFICa77NZEyPhg4TID/Of6
	oMetFBKCLjV5j+BUyl9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDpo-0000000G2W6-19YK;
	Tue, 05 May 2026 11:21:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDpn-0000000G2Vs-1uSH
	for linux-phy@bombadil.infradead.org;
	Tue, 05 May 2026 11:21:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=EO1SDg/FWkC5uAFkmuZlnTgiUQOgdpOBo7/xkIIXQOg=; b=c8WlliQiJCY7C66X8tMtAqr87M
	Dh/X3t4RJcT6302QuScre5yf2P5e/vNLLwfIZI2Olg36h56h2ZKlUldKVOG8DYgvjPQ1cLwiU18yI
	j/Fypy3BVv/0BtAbm33fH7gjCb1K3YDYM+K0iyEX832aME2Y9fUKLZWjCPpNrw6Mqy51uKkQ4eCVh
	WmiDETkRNWgvkIGJj4JMKF84D/XXA6xa4XHY4FT6RYGry4jj2WNEwbPvTExrDB38qm3AxzkJuyVcs
	rzRMF07pHC6u6sD8vVg+8jNaevOFg3WjcasLLlG6/1ItDyNtjVk4oVrY6ukojPr4r/6W8jTBrbYS4
	6/pPvhSg==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDph-0000000DLxU-0IZy
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 11:21:02 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-44c44af71f8so177550f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 04:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777980054; x=1778584854; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EO1SDg/FWkC5uAFkmuZlnTgiUQOgdpOBo7/xkIIXQOg=;
        b=CIqhJuMfLHbX4vfMrCYkbpb9nGJwLcR+hI77joA5E4Ufoxqsn5xozkQFMR4eRsFlsz
         MP3iga1qxpeSphs2lxMTVibHw0a3VHNigkiFu9nC2jrT4r/LBkwLzkIhdoxKTkoOJwgk
         WYiW1KlLNZU/9T1cpbeKXM6fg3ZQ8fXGQO/Peq8mE69DeAiwFnV/CB47JBHeG4j16YME
         AdMtfNyyjn8pE9oCe9GdKOxHah1QuIoawHCVPiYHySasTcRwYDRN0iBXIXQnGY4Lp+El
         xYFCodDgPYwafD+mXo4uIavdJaxZ5xXGqufeDoaE/nsxxNOq/fo8RD+EiwN3CoZdCR6O
         w/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777980054; x=1778584854;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EO1SDg/FWkC5uAFkmuZlnTgiUQOgdpOBo7/xkIIXQOg=;
        b=E5NiTv/TDbjKV8ppEa3gdufFGR0UGbMXQpqxx1np9iIB4wS/h64TmP+9E2rRHjQqyW
         8O/if5XFsYNzTdEuJ+0gIIyVegHL2KCwaz54nusQ190V1MSZo5sFw1RiI60DeT8MY5M/
         OLPQ1aiiu9DDpmVadcTtXqz7ThRyZHkCIay4h2CahOBtweM5K6mJMnlelJnInUmFVV8l
         3HJz8fxpSmRKiEi255cGpX2jSUBzonGHreTRmf7bAFM+y7CI39jhdXpxg/aDWuxM1VNk
         cLHhVcADryBwqNvxTHTfm0dT+9O8XWKCyePHoNeX/EZYHId6D70XGHwTXiiXSg6NKtwH
         gQMQ==
X-Forwarded-Encrypted: i=1; AFNElJ9QMDB7wzMM2yU8MgpTqs7LqMHlurRkNsMJiN11HrbOAYBMyIGF87ugCbxRg+RHjqVlNBEpqXsIX4g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7lkVSScz+F64L3coMpjYBsRUU/Jr/11N+s830F/2gFOp7j8js
	Wr5ugnPIFgrV2/jDhginjBlW+RoYonoSx6GrNr5KT+wGUx7rlOhbhUMI
X-Gm-Gg: AeBDievsJbsMYCdVgrNsQDUCZXSNmLWqO3Mzf+mo+Mpa2YwUzihWOoZZ3gqgBOsOiMK
	1QwsrN/w7YaB2ACXEn0Wv8jwwRnsep9qR3UJDf/rNCwDjhtTSyetvSsM+Bs0hQTyDZBUMYdBEBJ
	LqUb1qJaSIVHEr4/mDrlMaXGPpMqioV33uBxv7dTtj6Gtxa4NkwZHwcMfc9xEoderiJuin0OqLp
	zJ4zbKnkk9tm9gmFFTnq0N5E0kuJUrF7+dZwdPnU4vW2B5o9ojQhcrkIIUrVyPbNyG4EaaVjRyS
	vMvFWxAaAMkDMsQ5lX9EfcPYyZtyhprijVclf+OLQiLqRzi9XOyu1tROJsCjhjsIybbcE6aFl5l
	tlzd0fAFRfy/NEzOkpGV4vrlfQVglT+/MncLziZ7z369F2Mw8YiucFdkbwKxCcFaz8CH2Rt+yQh
	KNRfENsmlAOCK1CzcZOw7uOnESmQ==
X-Received: by 2002:a5d:4522:0:b0:447:4328:f693 with SMTP id ffacd0b85a97d-44bb52ac4b3mr7017284f8f.4.1777980053831;
        Tue, 05 May 2026 04:20:53 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d403:cf00:9b58:9830:baf1:5f76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4505248323dsm3889557f8f.8.2026.05.05.04.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 04:20:52 -0700 (PDT)
Date: Tue, 5 May 2026 14:20:50 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v5 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
Message-ID: <20260505112050.dy2jn6fz4gcsrvvo@skbuf>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260420191941.81834-6-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420191941.81834-6-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_122059_133785_C88AE03A 
X-CRM114-Status: GOOD (  10.01  )
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

On Tue, Apr 21, 2026 at 12:19:40AM +0500, Rustam Adilov wrote:
> @@ -146,6 +153,18 @@ static void rtk_usb2phy_write(u32 val, void __iomem *reg)
>  	writel(val, reg);
>  }
>  
> +static u32 rtk_usb2phy_read_le(void __iomem *reg)
> +{
> +	return le32_to_cpu(readl(reg));

"make C=1" warning:
drivers/phy/realtek/phy-rtk-usb2.c:158:16: warning: cast to restricted __le32

> +}
> +
> +static void rtk_usb2phy_write_le(u32 val, void __iomem *reg)
> +{
> +	u32 tmp = cpu_to_le32(val);

"make C=1" warning:
drivers/phy/realtek/phy-rtk-usb2.c:163:19: warning: incorrect type in initializer (different base types)
drivers/phy/realtek/phy-rtk-usb2.c:163:19:    expected unsigned int [usertype] tmp
drivers/phy/realtek/phy-rtk-usb2.c:163:19:    got restricted __le32 [usertype]

> +
> +	writel(tmp, reg);
> +}
> +
>  /* mapping 0xE0 to 0 ... 0xE7 to 7, 0xF0 to 8 ,,, 0xF7 to 15 */
>  static inline int page_addr_to_array_index(u8 addr)
>  {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
