Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132EF606A31A
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fVheAbRA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=mSoTEt54;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Wl4mPepb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TLt/HberJSv6IvTxDRUdJnR9ZecM1NxoYocThcIBDm8=; b=fVheAbRA0KRDl0rMhmJizgadK5
	NjN4S7U3BLS53bK22HhEuzaan/X736wqGwwckFOZ4WF9gsehWidLC8qbyb/6GjSqLn1ALnD75lQuE
	JwQS/aU5ywpx8RIucpt+lLf4lG0cb3fEPOW+IaQ2bUUWCMcMjHe+liJc4lSYWht6Vhdf5pKz35q+m
	JUSrz4ryyPgJmrB7OlTcMKB5exjq4Mp1HZRP6Uecp/Ft1gP6WbegShcRt/LXQtsbxLS8FDR4Jx8TB
	jACR4yoakeLvyVA1pe3ezEfhQ3i9rqeAgd6L3oTN11dZVWoTYoXM6IDWT6Wq5lH9rBOAuP+9ZFuFb
	8MG3wvSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1y-0000000HNP2-3GPR;
	Sat, 24 Oct 2026 03:02:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1j-0000000HNLs-1Sad
	for linux-phy@bombadil.infradead.org;
	Sat, 24 Oct 2026 03:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=26kedF9SHIRpCFFDMM1QZNr4jXNG7AuPwLWQ40UbmjY=; b=mSoTEt54UkcWreEnkV+SKTKQkO
	mFuGRTaRLq6Hz53rq/lCb4XeTu/CWpkmGD7pWS8ny1q44gAhbX3k5UbaoLRnPgFogTfXDDPR0jN+p
	VNrLndxSw/XoVFSnrglSJaM9bdd4U3ivVThKPn/MF5DLvK3urQnaHuJnf8hC2m0CclWbH3mTHUW+O
	j6nRVlg3/itcZHzaIWcGfxUafOTNfdE1J1qQy5edHZURF+cRLnFfGuuNqrjTaT69EhVRhjVETOlQv
	ZLkZDgjPfoY74Lo3JIax6vwIUPD2yK9TV8iElP+Deku/JTT0hdgfFRT3AKesLkYkxILuasrhHJYTk
	/LiRa/hQ==;
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1g-0000000B9N1-1K25
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:33 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-845788309b4so709546a34.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810950; x=1793415750; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=26kedF9SHIRpCFFDMM1QZNr4jXNG7AuPwLWQ40UbmjY=;
        b=Wl4mPepb8D2l/4Xzi9tiPr4GLDMhFrVcvNU3kr3PaUjm94axBWG5KW48UzBRodVkXc
         rzDG/DTeh5OfbJ5e4I64RXfh3iS9Q10g0pakWAgHd6uuui9bVwJtiKvxuaHJ89BkieX0
         1DrBgpsUbxUyz+oWyoFpBreZwiM+z0Fi/G/COO3i80YMexx5HBkrCIlJyJ6uX5E113Ks
         HHvtxM4+6gF/drKZ4llfVgq+N1pf4ZjlRg00Y1QWq1RvQ89+lXAsr0QRsBqdd+NJher6
         YDctvn5jvQ9UPtslhU3y5FuVGIlg2+mrN1r/xSPk+/2bRKS55RR/3O0dP9QtPwQSU9Yr
         Lmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810950; x=1793415750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=26kedF9SHIRpCFFDMM1QZNr4jXNG7AuPwLWQ40UbmjY=;
        b=kcvD7BNQmD6Dw892aW4f3wUplXZ6FoCL64+JERe1LUKJtC2ju7k5G8JO1kf6EF/nHs
         6TKtE4K+XSI5Jo4+dtnqXfF5ljm5skCDYvXR9xKEdqaqE1URXkc1OIktpSEKI7aTuxGd
         PF+9txHQa+td0YmkXkeDxR4uGUfGzWhRSDrbxS0x+10WdLk0FE+wGh+lvvljKRlxVjhm
         le3lEYHp9rMTBqjAET20mcRlp74nNrOIwT7MM2ri2AUQa9OsRxhSmqBNZP1Y8/Ve6BNV
         6GKnzTcKSacIRqw+LxQfhs6NRu8mpnMmPsw7YYIlUDQ0qDh/HzljQEofeQDbVNTcLMWh
         GQSw==
X-Forwarded-Encrypted: i=1; AKwUvByukgM6So50OjAuFft75h8JQvcDCSltz2LqDiQRtdT/CUnc2kID2wSE2BCbbK+fC2fLo7kjM3TLRf8=@lists.infradead.org
X-Gm-Message-State: AFq9FYIMTku/AmQ/tHqxCuCh7uPYKnCQRt6ORr8Kv+mJ/X1s1tFqb0FF
	5BLHaPiHJG4DBll1zU/tzE62gJRKIOJYyOscx4ZrwXp07pHC2fDnzhDQ
X-Gm-Gg: AYBFou0aop0oLCR/lO36Xy+t8c9e8YUk4gA5ZbajUZeMPSqsS2iN/fFzOnkvTqC92Y7
	lp61zLK95+ExsqJOjGcy2slKxg4AB9jaNCYq2rWIXPZe7HirHOakWUPMO7jcxvk4RhH3gqgDkO+
	XfBKJ8iOwBtM+Rlz/yF1PHTECgLp/HmfK4bZEJynjw+8n64ggHrJMpDNhxy9Xkt0nb9WMyxCyWa
	HcP6SGQX2OBqc5QOWNf4s6k4rfNJ6jixdS5jyPVInasHrCTb7TL1W25wyQymkb4eEgCcu8DDg5m
	UxsUPwvKhF6Zjndwx+NZlL7l0cTHRoAwem6n8O3y1eQBS6L73mG3Gui0U2gSKRirXGcF0gGlY3w
	5VKTjZhJajTfqxYZ52H978jC3xFmyyClWqJRP1f4g09EvZMJbG8tf23RyTG/m0Xc2rLo8BCevbh
	BUhWyb0YCmiYJSA0yXvLmCoWngz+NALe4fAzKcoGVbPAD2Pp+wf2MW+q974Tr+ORiCp8FbZAbw9
	ezPl8PoHfaIssaH174MVFhSFrcqC1/xs2NF+/+FgyzNohfi+Zmja1TLMCDwNY9geErIXaqFnzoW
	37J9u4hXotTEBt3u/0gxcTL0zA==
X-Received: by 2002:a05:6820:1ca9:b0:6f7:c0ec:1a67 with SMTP id 006d021491bc7-70ba0e11aa0mr387906eaf.21.1792810950282;
        Fri, 23 Oct 2026 20:02:30 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:29 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v5 07/11] phy: qualcomm: qmp-combo: Extract common DP PHY init sequence
Date: Fri, 23 Oct 2026 22:01:32 -0500
Message-ID: <20261024030142.13643-9-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-7-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-7-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_040232_446243_77D3B5CC 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
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

On Thu, 01 Oct 2026 15:04:24 +0530, Nabige Aala wrote:
> Extract the common DP PHY initialization sequence shared between
> qmp_v456_configure_dp_phy() and qmp_v8_configure_dp_phy() into a new
> qmp_combo_configure_dp_phy_common() function.
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
