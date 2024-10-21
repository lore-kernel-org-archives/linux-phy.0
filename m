Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E82ED0E6D5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 09:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bnminn1efT5BiDxUNVXwS67mtgxixdAaV0lpnNpyKnU=; b=I5uu/QiEbisXKF
	CZ4dX3C+0dNmdp4V9hbo9wEc9wPUHD4+srdKYlTlEb+G2FME3lRr1V9cakLFiiF7gDhqkDNeIb7bb
	eF+FTgRRKMRBz+5V74qtv7py7fi5UaIblj9+UTs0ua+0U42PE5b2VlL3eLEZxSJLtszzdam71AJlk
	fpnnlLlxNuT5ikTT4oulRqt3DerKixOcsB2EdJSJ57ETAs5TFL5kGcb/Fikxb/I+mqoaNzi+ZR3eq
	eBkb6CSkHrFCO/iGTbNeBdxcvqa4BAf9UoiLDifnkc0Q+wp4l8c7kOhhb6MTdVlH6JoJoLYRi797l
	3O0O27LQkQrnviZNX7Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oVD-00000006fWu-0lBo;
	Mon, 21 Oct 2024 09:15:03 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oVA-00000006fVi-1YyK
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 09:15:01 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4316a44d1bbso14987225e9.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 02:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729502098; x=1730106898; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KEo5ipgegMr0Gtq3ljXKbBr99VO5DdO1Aei1PwY2srg=;
        b=T0j7fg9SzAM9iEZHsjb90Op4iHGJFYyEBOdDwwbN4t+2mbBE6efCQWz8Lp11u9AcEl
         wRusX+MzTKOwpXt1dG3k9XLVmBHv/lbIEe6b0WBOf4ELk21tSFCje0xVE0UGBHJW57vU
         3lWeGeBmO0SrIMMVdjEbvrpolkfyMMMmzNntk6t698kA+H2ss1ikB2ev+lgBGaZ5nlPz
         L9hHuW01PQsFqvMuN68MVALOjs8k4+7M1JuAJHQyFZmBbOu+7RNK0GIy3WqrPB92fDKA
         47WFfUi1hk7nDpxp6REQzEbLGcgZMA6W3Q6z34IYgHBBYyVqRDiRN4KPaNXxJt5VYSFd
         zVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729502098; x=1730106898;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KEo5ipgegMr0Gtq3ljXKbBr99VO5DdO1Aei1PwY2srg=;
        b=lR5KzMaTwFs2bArdEWGwYotT0fHn811hhs57oF77iAlrCsFhcIa/TRKMFwRWwVgx3Q
         3Ne+wLtdsiuW0KOHS6tsxdFlW6wpncMZfWNv1U9mDIl89hFHf2guupwgRzX111N6hsCJ
         ltu4nHibkkoR8nlPOyXka7+rYqB1xbRGxATo3TdrDIpiDmSlOgVTSjQADx0SDnJYFzxG
         AHk8ui6L1DxxXMkI10d/QelPOMw3pK93CU8rwh4AaSWJ/VGbSyvEhTSi9NdIoSwiwS2D
         gzKpG51hV3/A2mYIdbc7Nbv3LnGg8/BaHFHR7Gab/PdV6vxC09Ih7QeRBXZPef/VlgHI
         a1Lw==
X-Gm-Message-State: AOJu0YyWToIHk5WMRJPcuXslTMnXiYnKuWcO5YA54KU5Lpk6TlxqOraZ
	PUNgT4aq+XCeLR7dn5+nRFa+tnSi4nt2EGDzJmOHyAMVucQB1Y4zCdDgC738vV0XYfIN0dSGRjY
	l
X-Google-Smtp-Source: AGHT+IFw9Ca5eUa6X3tc/Pegude/3YuH30pbD0nFIvhC5OONhK5Y+1KcVDL7KFbijEOw0VZd8zzTQA==
X-Received: by 2002:a05:600c:35d3:b0:431:5f9e:3f76 with SMTP id 5b1f17b1804b1-43161669464mr94613335e9.16.1729502098176;
        Mon, 21 Oct 2024 02:14:58 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5c2cb8sm51202415e9.31.2024.10.21.02.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 02:14:57 -0700 (PDT)
Date: Mon, 21 Oct 2024 12:14:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org
Subject: [bug report] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer
Message-ID: <7cf05309-5324-4225-bedf-73f3f577de54@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_021500_433578_1EA123DD 
X-CRM114-Status: UNSURE (   5.81  )
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

Hello Adam Ford,

Commit 1951dbb41d1d ("phy: freescale: fsl-samsung-hdmi: Support
dynamic integer") from Sep 14, 2024 (linux-next), leads to the
following Smatch static checker warning:

	drivers/phy/freescale/phy-fsl-samsung-hdmi.c:510 fsl_samsung_hdmi_phy_lookup_rate()
	error: iterator underflow 'phy_pll_cfg' (-1)-69

drivers/phy/freescale/phy-fsl-samsung-hdmi.c
    501 static const struct phy_config *fsl_samsung_hdmi_phy_lookup_rate(unsigned long rate)
    502 {
    503         int i;
    504 
    505         /* Search the lookup table */
    506         for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
                                                      ^^^^^^
What about if we just made the condition "i > 0" here and defaulted to the first
element in the array?

    507                 if (phy_pll_cfg[i].pixclk <= rate)
    508                         break;
    509 
--> 510         return &phy_pll_cfg[i];

Or another idea could but the check for if (i == -1) at the end of the loop.

    511 }

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
