Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F0760A3833
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XMW4CJm1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=STdNhTHu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=92RBqbRSIVStHGaHJ/jTCSdAd3fjqgycYg0KzdGFNlU=; b=XMW4CJm1R6sMwHXd/retm2e4W9
	vRH7I1ukUZ/6yQhRY8AJAC3ycaStf2Ce8Y2S7NV7H8WEfi2c/8Bg4f4xfcJ+NtGmn+mygXTx740xz
	j39ATfFxczoW4X2p3Q0yuKl1UrYEUnvqp/STnv3hYDvv/aBj7xQtmrsJcWW5uTy3IeZlw51IEaGto
	q3Vquhz6fACINpE/dFADeVd2EcQ4o7616EKAJEvDqrqKdRiF4xllDeWktwl9J2a7w92bfqN9VDRYG
	2l0zLoN6Rf21KdlD7VHWNXc8jp69ZkGl2Y4x3denUTiEhqQIhD+XoaVAzBs+YLPY/CUrxqkuZE4Ll
	rgjFT91A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1i-0000000HNMJ-2dJW;
	Sat, 24 Oct 2026 03:02:34 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1g-0000000HNKl-2hEP
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:33 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-6de2f213b7aso649084eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810951; x=1793415751; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fKDcIDvOzdwB9vAnzcx1GZSR5/ZdYdoONGgGuOdOQZ0=;
        b=STdNhTHu9jNBfYQ8Jk/2Y5OoOT+7LPnDY/4wDA98BRgzm6shS7Mzm6Drxg++2gUwTh
         krEoBL+Y5EQbOWXW+C03mcLDTgJhVw01mPo79bmuR+Lwm9uKagLfvMCNiJVX/+gGa0ow
         1pNG5bZmou79RXjTD8mFT88XmNuiFGky5PJl6F8KaXL7HWeliBbYa+ouRj42Y476cnWO
         Q+8sWOs34GFVx8q1ennEds/TSgchIY6UB2jpSV4mYG1l5C8fZT5z14iLEkbfaDhsSLW+
         pBqc2Ia1gIVduJGQKUnKjRJNA2Con0mUXtZnErQJv+If6WNpXzBuzdif+n1UEYObEgYU
         NCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810951; x=1793415751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=fKDcIDvOzdwB9vAnzcx1GZSR5/ZdYdoONGgGuOdOQZ0=;
        b=OtzInW3+b/HWK/O82uPPWDgRPdV5WEfKUrlUt3jJC5dxiTVNgf057mY8BAJlPLUNvd
         y6sAowDrf/UHFbD3JOzV7rECEIWN1f5kNgsdxomoYKahyQW/gTQlMZ5WGw5jO0NBcOrB
         z87NFDkr//gkOiCzi5XdtT4O1RJ/GlqZ3sP5E66+g3GX+9jHB6E0CbLrxBMf5TN7W1wk
         dVaxDE1ndnUrLcZagS8RChuv6cl62rr0FH6MSQblE2l7zOBRimHr3plvjfol5oJplMMQ
         /wejOwByoUA/v+hXKSXOfXs1GK9KqXso8kBkuaYFSS0N8MplTSjEAwTsecCXljLCXR2G
         ZJoA==
X-Forwarded-Encrypted: i=1; AKwUvBy7P22Gt7WoEtpVdVw6mI/PSdppHBByqfXkr2+ra+9zb89CiF5l6ZgZxR1iGj2L/Au8yo70cd2zACI=@lists.infradead.org
X-Gm-Message-State: AFq9FYJIMZb0eTanHOORGSB+HRbZxPxXYBGM/7bKh1qO4Z6Qx2RlEcqX
	gY+iPJWHMMNtfkMMC6qyxTxjiNnaZsJ7qbrkhhmchXcs8cUcrUkMSK+U
X-Gm-Gg: AYBFou0azXUclpSPa3z4WGud8MORopqBxHOyzMWWX/AfR7nSgWzyhFfm/zyaoOYglSP
	UMfA3e9D+ptYS3jAU9iEW3Z2o4u6+j9QBTJenHfPhmBWN5MCHvDxyqN0xNF72w609ixLQ6bvVih
	15Nnh9Lzpws3A99rWf4jJwAXSnUYkd2WJXtSamdtk4OZ3S0ur+6sQVfgBtc+GFCZRhBxJosEi/N
	d9CtVlZkqdk7Rk7B4K/Y8wEMeW6ANk2BOD2K9daaKZ0QdjsxPOGNlbB0J9Avrm71PmIA5fdNp4F
	yGy9AFgYm9cbwZApD6Yy3aMrcv+ceu19lODQbK+0OZetWADehehAniEv2bOVOqzGyh98w/o9HRx
	XmEJkNJhFfU76zf+o9VBSGkkmsVc/ta6487eW1yB6IDFGqn6OvqxLnh1rqxISXJGTlcNxqaH2mf
	+qqtpWg9OjCzhS+m80RtnnuH/XKzZHf6yfD7lIxZBAP2lSJEkYf/WDLHXjKS+mjIW7UrbYgXmoH
	dYyz6DBqWs/b3VrETmxECYXNHKL2ukX4zTJpVBvbeRVX/enVdW4JjMmtNJ/TQBlUmxuGHJqsnV3
	IevFtZzHAHtbF7Lc/mIbPmYKVg==
X-Received: by 2002:a05:6820:c0c6:10b0:6c0:7620:fccf with SMTP id 006d021491bc7-70ba0ec9f71mr274394eaf.57.1792810951596;
        Fri, 23 Oct 2026 20:02:31 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:31 -0700 (PDT)
From: Jeff Roach <jeff.roach0@gmail.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v5 08/11] phy: qualcomm: qmp-combo: Remove VCO_DIV programming from qmp_v8_configure_dp_clocks()
Date: Fri, 23 Oct 2026 22:01:33 -0500
Message-ID: <20261024030142.13643-10-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-8-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-8-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_200232_724632_CDF38433 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 01 Oct 2026 15:04:25 +0530, Nabige Aala wrote:
> QPHY_DP_PHY_VCO_DIV register does not participate in the
> divider of vco_divided_clk, it can be left as it is- No impact
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
