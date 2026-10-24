Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6090F60A263D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=inTwBu03;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=VLEmqR3k
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Fc3+fd5wXljQvML1SkFn+YDHPwwa/1LEFjwk6Rag44w=; b=inTwBu032B0S40GAmVM3ZbKuks
	0WD5aBK/MVg0NPhFURWiHhoDOWoPl0WrcCd8GdzjfaCgq3FfF6p12TB96nFRiZhuiicjgqrPSD/YV
	p6toIt/iEzKc/7bXpB6wDQAfQ1jHe/IcbJjrH0dXAsOVCtiOkeEPAD/rpZvt7Pt6X2vMHg0Pm2igZ
	JXpoqfgR69rMwInlZkbSk9zrUC6JPtEP1UoxkXcSjfYDosMchVhOCFmINPXwQF1TOIpwiNsA2/5MM
	FImeT1xfmorHB3m/3H3Dibsa3nF1sKhXlkCT1icKqGvF2tR/ba2TluxUPqvbxjFqbsPmvF08M2lsM
	5g0zynAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1d-0000000HNJu-0PaD;
	Sat, 24 Oct 2026 03:02:29 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1Z-0000000HNIe-3Lgv
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:26 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-6cfed5dd083so1080870eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810945; x=1793415745; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a1b5LqRY8mdvBUKXOEQXg0mPK4S5xc8s9ZkWSNVbjB8=;
        b=VLEmqR3kYUc1U3DeJwAsC0ItFPdxFnpXVx9wQPolmjQW3xkqCFFXEJllMqUkm3XfM2
         nsfUNP4CeG2h/coLtvyw2MiqZ6tzq1j+B3subExo9jl9y5WBA0zD/+zDMuku6FDcqFzs
         a0W8qXxRRVNag+cM08sGsnAx91dNsCT1xBpnsgLnKGrT4yBwp0hgZgu7jCOdRyfBOPM/
         ZUJNZ43bzoraEet46JSUM/Uea4Am0Z93cdTRPrIHlzFBASS7XbnaQGQI4gduKp4tY/fq
         vVG0BHz1t4kn1DvcrcNZ0EUVtBW91lF+LBVfeemDdROfgOIKr+fiOJwWwqTuGfpQjxxl
         FT7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810945; x=1793415745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a1b5LqRY8mdvBUKXOEQXg0mPK4S5xc8s9ZkWSNVbjB8=;
        b=uv7xn/AEPwPmRTN5WG7soRMLT0gn/B23bDQiVBqcUgAe2Y/h6zDUkZu/9cHS3eKwnd
         QxJ486bW5JBUb88rOKLON4sLZcBxS9ofmGMAg3UhtxGXJxiAtMO2MKqmg5VPWOgCx0R9
         B6jQt35V+FcfkGWcMVAnEZTbqEAi4fwIsfZgeDB+4GVwKAG2HJd/evxR9HCBWE11eR4o
         QeP9FQCGaAWK+JODl3pT93CShGYTOkLc0RYDOKjFH21w+rj562Lu8JH8crWBxJEfwLX1
         wHnVryGLF2M+Lhpn1+zYW/x47o3ZqGK0USPq50kv2U2kGtBHtPMo3s9XmgWJM5+S5snp
         cuoA==
X-Forwarded-Encrypted: i=1; AKwUvByvsLF6UEEPdrB0xjcRyXnTG/q+dy1cLXdDJSMebGXgrddlwW4fjjXzFa4PkvQt9564i3wQMTVdNmo=@lists.infradead.org
X-Gm-Message-State: AFq9FYLlwn+UxUUxYPQfnepfX6bISK+XlrfgQ29xgOlhTpfelxMyjWTu
	k4w5zvMBm5OzA0OminY/Y/8N+SzZaR6qM5DbITtcYhzMXisVHPxD/zat
X-Gm-Gg: AYBFou3T9qkEl/4xdJAKOJHUQpEvS+lg+tmgYtqlCmgF6yBx1VLuF0wS/hNdQoiv57L
	YhIIKJZ62vRk/M+fcyYjI2+H/RIlccHBhYYtyG3J2Tm9ZtjJR/hyJO5ximb+9NIajq6RL2pUsuk
	Zlk1LuSH9pT91pN2smAGo8UVX8YQ7k6wHfziWPbg/8BQqBopbv5Vj9QfuppNs5Uq1Sp/gFvp7or
	x6TeN2Xvh6h3EsEN50L6j8x4SK6jzRJfyGV6En70PAuYmXxbvE0KLyBLa79J824n7hyis6kA7Hs
	Gu7WWel8gXieDN4y1j885d4XfScILKdu/zqcoVTCVFv4ERDExcQKikSjZLrlu8sKPSinbC298lV
	4Ls0ACkWw9sMDri3dYfSssqpX6nsx4fWApqpiAHW4ULx2fUS5zQwN0ww3//UJ9qkMzNWTWQshzk
	xDyqSxhSgeCs0niKtoofc1Lkp9jyS6wA3pw7PbetO9mCRKUkGQFK56+4glMI+8HTSNCqYStkTiW
	jMARb6nn28efcAqisPmb+Cm5YApuaQLVIaj0t6/shIO29+wSXqg4/Lw35PIJu1H9n8HAjkmnO6p
	+FQ7eA==
X-Received: by 2002:a05:6820:1627:b0:705:cb2d:e0d7 with SMTP id 006d021491bc7-70ba0d9eeb5mr369148eaf.26.1792810944770;
        Fri, 23 Oct 2026 20:02:24 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:24 -0700 (PDT)
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
	Mahadevan P <mahadevan.p@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v5 03/11] phy: qualcomm: qmp-combo: Update link rate specific DP PHY tables
Date: Fri, 23 Oct 2026 22:01:28 -0500
Message-ID: <20261024030142.13643-5-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-3-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-3-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_200225_845108_2A445C44 
X-CRM114-Status: UNSURE (   3.70  )
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

On Thu, 01 Oct 2026 15:04:20 +0530, Nabige Aala wrote:
> Update DP PHY initialization tables for all link rates (RBR, HBR,
> HBR2, HBR3) with corrected VCO calibration codes, lock compare
> values, SSC step sizes, clock forward config, and bias enable
> settings for proper PLL programming across different data rates.
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
