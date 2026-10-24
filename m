Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036B360A3832
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jPvFMkt4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=OAYP2eSE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=eXqe0NoL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zUdYk0jZND1el7m7enXL3wIxgsvu0gRek4aLwTHmxIE=; b=jPvFMkt4SljCxrCN4qQ6f0h48Q
	6YjV7OB5Mw8/SuQuv7mztSdOBouoM7ixJv8uzpZnQrJ2Et+50iAe3MvP0SDe/olGUmLEN0s9XzcjA
	M5i0nt7E3FiW83+01S8zVuUavbih1SenDMy8HyW9pAVKnuBTB3T3X0+Blw1HovWiF0cJuLcHgpg34
	7XJwL4zjeAU44FqwkGbLfhcsE9bO1gz4oG4ny2GLFEXrIdk/AB9PoXDI7/eGzG2PhpJ3uMfO0/CxO
	vbILR0WfuhZdMnkf0l20e0uuS0pj5MJUzTbD6bdjEx0VV75fECpAxPAHDN74nPl1h/1e/7V5JW+js
	fpuFswzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1i-0000000HNLj-25eG;
	Sat, 24 Oct 2026 03:02:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1f-0000000HNKQ-0NRV
	for linux-phy@bombadil.infradead.org;
	Sat, 24 Oct 2026 03:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=19hh/+WHY1QppPzIy1oNIREpwHyJPWnwZ7GJt11J8h0=; b=OAYP2eSEWX3QesS4zX+6pGbvjD
	gRz04o0uCcSM2McU/lP5wY0cLnQ2MApSf3i2sOoVi9JeEwuVu4Ukp20QlBruBydRIUN/TfRln5m4k
	QA7BUw2HK03N7vNl8/EcUqJksrZ/evOIOGhLqMfaNZU91/z5PISqdtmVh+1Nvm31B66uO4I90IrvJ
	WJ+8/JKWlGRu4capNTVatPWLbWIiAAZksreSArdL9+ke0o+aTyBXNLfqiCp6cM/a0rrmEf3mGSoIC
	8VYOv1YvpNRWuudgFsBRDrVvcXj5kXJSHV7K61a16BHQVkr+Q2dOWCk8NV40q2YGivoUm/QEWXe50
	KwvNd6hw==;
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1c-0000000B9MF-127g
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:29 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-706113e92f9so856820eaf.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810946; x=1793415746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=19hh/+WHY1QppPzIy1oNIREpwHyJPWnwZ7GJt11J8h0=;
        b=eXqe0NoLn2vxrhFAQ4qEu3j4P5HjvaGTMlRK+m5Vq+sW1gvNJBMEncw5a6DZxGfS8u
         Ei/urtisewPvdD+mNUslD4vqPWaoSo+xiDD+Z1n1tAkYkMIQurE6JcvZX+p0Q+MayrWE
         NrA+kS53M0tXGbKNvocnwGweVhe2yY9/YmDHkOXcJV/34qYN5Gn/3zNXqpmn2UO4Rj0W
         Ngl87DDzJJGls0F0TjhICex3Blv8oVxBVWyyGNaZQgAorMsLpanh0/fC9qtj5XHwjGYA
         hFmrY+T4j54hzD2kkqn7dRZE4YgcrBiIPO3LPjY+uYQnfPD8YMWRBxmzz/uG9hBUlRr0
         AcTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810946; x=1793415746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=19hh/+WHY1QppPzIy1oNIREpwHyJPWnwZ7GJt11J8h0=;
        b=vMz4VYujT/fbyZ41TBOWBOuUoHXruHYtn3oIQ5v64608l4MXEkxfq973UVii+yTIRO
         PIN/hBOfRLeof2+fyAskSTwrtLnzwH8nZ4gY+aqrpXcjDo5Bfe0GsOC1JaJqtmjk1MVm
         Re3U9ttI0Xx3pC2ZFJouCQ2msOs90UiJwCjiYRSF/NxdwBdrnp+K+GHsCPUApWf2SqBc
         oaMjJPwryo0yPLsYc9/L2XXSwokbiXrFZeVDQMGcBRnwPcYvH4Mav3Dg4ZLJ63XCulI9
         5TN5L5jhf0kHLHFD1Q+dtczGCFSE7VuILMfwQhoimd4/K+SDelVcluXqzzV+Bv1RZAeJ
         Kq/w==
X-Forwarded-Encrypted: i=1; AKwUvBxIjjz+F5wAane7FvE0rpaWsPu7TVzLjJRlSaU5jTBotMw4BD4TbIYugb/tAqL1R2j3tRBDcf3r9p8=@lists.infradead.org
X-Gm-Message-State: AFq9FYK38Wehv/qjmPphMdHQVc9Mnu1t5bMsGEzGddEXoERnzNpdHUDt
	ijMoMyJI4Wz6e6KfptdQDYYZX/jBUPIqCb84WXKbQqOxIcvnvoVMYCxd
X-Gm-Gg: AYBFou3foWftAmOU/PSnfGFGqFSoQb/WV7IDXQlFpiIyrmiY1NM5NIia+7jiYgp6Xh0
	VTchWnGDzoluY4d9dHYch8S6tEIfMLrp7VEukXCUJP2ln9owTQE9Qc1JlwzztgpZ9/LWz9poFNt
	WohybD5yMfkrbIcCnEfm0UmWqBKkjseKB/TspSO1AVJ4WMlCLQ6H+skygh1ovsQFqdzAZHffoDi
	b0Rqmeu+Ltz2mrqDVbC+RtSsP6RFID+LjQ0mYqlwhMeQYk94c6J7mXkCYGAGngV77y06DIGSkhR
	1/w2aQBZ2T9cY322zWafBd9AiqfFitKKWd/CbdnBw4ZEphIM9IG3r27Wxvpv2KgivHncTcNapeR
	vk3aegTUJJd5toR3U1WJgaMPFxvs299RY9Q34t9QCI8VxgUJhFCVz8en65g8fo5/op4tAm/oj1w
	MAhk5GkoyWL/bK0QsN9xaCtXBMGBMZj9BTInxNLjha3hK/JOoXMiMd1RFtlHMxH6JNxuhlePaWV
	rq05w9Nu25VUFyHYqBtoAkBS+dJ96OJcXDStf+ir8ulePcAuJPzYVnvAXsEosZdZDSk1BSJPQLL
	DJXU
X-Received: by 2002:a05:6820:f012:b0:6b6:93d6:afcd with SMTP id 006d021491bc7-70ba0e13073mr403628eaf.26.1792810946228;
        Fri, 23 Oct 2026 20:02:26 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:25 -0700 (PDT)
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
Subject: Re: [PATCH v5 04/11] phy: qualcomm: qmp-combo: Ignore Type-C orientation for Glymur DP mode
Date: Fri, 23 Oct 2026 22:01:29 -0500
Message-ID: <20261024030142.13643-6-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_040228_497337_BA18221E 
X-CRM114-Status: UNSURE (   7.51  )
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

On Thu, 01 Oct 2026 15:04:21 +0530, Nabige Aala wrote:
> Glymur platforms use a fixed DP lane mapping and do not support DP PHY
> mode reversal based on Type-C orientation. Add a configuration flag to
> ignore reverse orientation during DP mode setup and enable it for Glymur,
> ensuring that QSERDES_DP_PHY_MODE is always programmed with the
> fix mode value (0x5c).
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
