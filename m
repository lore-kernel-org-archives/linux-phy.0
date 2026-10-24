Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A9760A382F
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4wGICPB5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=D9WFcxCo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zgmSbiuDtR8FGezu6ks5ZQbAxFlXvVGi4KazN9lRc+I=; b=4wGICPB5iaPAznM4Y1FBegTXaY
	Z9HBWTpyguhFz/URu8sapQbM/YksnTvuxTp+n+oyp6b0Tlf/ttqEUNdWNtg679bUpS/ovsCBjZL2b
	fky37sjaDYqOyRVgL+ri/1FjjCV2NOJZz0gN/Gh3nAPhl7NqadnfPTOdZhfaCib2eej74W5Ao6oAp
	2Bv6ji/aWHcCrS4lTNb4bCvnTf+edGsLLujkBuJGAJUQKjq6KCcePYKWZ8wlNJBJuNlwurzP8+tO8
	Q0IJC+qLVUeiWe4nlOeUojT9OthsECeExKLUkaVsClJDSvyvG29foqL2ZeNuwGF45Bjr7VarK6uuw
	lalowbkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1i-0000000HNLV-1qnd;
	Sat, 24 Oct 2026 03:02:34 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1c-0000000HNJL-2Gmb
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:29 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-70094949641so1292649eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810947; x=1793415747; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fAkzqZbGN3Mvn3Rb0iYOn/dd4HhG4tyMlp6PIvyFcpA=;
        b=D9WFcxCoJlS8ooIiFpdi0iZqDJreptg+Qs8oLW+YSVb7BClrA3wVZdoAF0jl89jwd8
         3NBBSzPYZHvkRyxjktEq6Mu/yCrdIEdN9hT7rgx9IJaA6riyQuJIGi1dIJjJt3YQ7+t6
         8r7uknxo3rubKRcbF5lAVVYoXxpruP/rCbVOkPSyQyk3Nwi9VMt0QvLqADf9MAwAevxo
         a+v+a2nyDLmXA3FOKybquRt/wtc4DWIKeM11QhmvtwNEvxa9c4zlWgq5BnU8E2gcq4mc
         chcida+ngQeXORVgq5Kv2k+sASL0WwoP5+PQXrbr39g0RyiVP/nPPEZh2venTrCKf66C
         RqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810947; x=1793415747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=fAkzqZbGN3Mvn3Rb0iYOn/dd4HhG4tyMlp6PIvyFcpA=;
        b=bXWVimSz3yejwbpT+Iuu+YjNgaoW2uyAP8gjIYmw61YrTLz/CMP07xcx+7wYQ2FKE6
         FDjI6zZoQNLAbe5IiESoH6xyP2kb2lAjEWf9Eui/89cKH2+jE6wo6Gz9KczGj8mVDU7v
         ChIrPI1RTyRKEN5WGV6OVpxfTvyIkRIXURUlcxUI+iCK6vKUsGLqAGElNXfrJynjSu/O
         i0OhuJrP9wA8QFg8hEoyny6ggmzCBRoCgpWwlRTHURmJMM9rdPT56fDAzL3sjOHmzQUF
         r7KcSj6vvfoQhusXrQEC/QmSWQYSQVjE2ysZZuNyYGns6lidFpnIR8dlSw/3e4PWKXkR
         i6MA==
X-Forwarded-Encrypted: i=1; AKwUvBzVjgRlaQT0kq4AfC5rh2t+WxVGEpwLKK2QE+PeLTSdC9/w3knWjRz7fO92RVtwUtd67xVSdALMew8=@lists.infradead.org
X-Gm-Message-State: AFq9FYL6EyPp/B85V/O5mn57nWnazSDM309xd+WHKCF7x5ZhicBbKaAa
	QfMlKTniajwE60KaCkwbr4AWHpPN+U7BLntpQ5/Bn+GrlQ1wfAhOCCtL
X-Gm-Gg: AYBFou0XN+ibZKmRdNMRsBIx1Kb7x/G970OoSBR09An3A9OWbjmK/xS9FhdJ4H4i0xm
	yyC2sJyKn5KheIiusjuzOEodPJZw+CS54A9w+so3J0lz9yO07ejaTq37lnzzkDF2nKXVhvWDTB5
	bTu804pouG5VklpfB8R8W++Uxf/Q1+y4I78A7MdtvaVGCCvAx/47lDk3scg2LObQGaxkLB6LInc
	Af8X9uLdFHWIib1PVLSsrOpfqrwXWmG3+NItEEaaXdmMAUishLC6hqnHoyKyF1QePk5TsG6424N
	qWs+LQNFMOWuutj8Gz9K9p8hd8W+fI0sSQUF2FW9wL+iovF2fNq3Ky69+IT3jS+vScEd0V0R06I
	WGV7WJGbdG0i9+wNr9xX963x2zcYC6oa5qsJWL4pHjCt1wCtKCktnZrEAcJLDRlTs5e7XyWQYtm
	xFl7eZ/9SEtM89wWLx+XzIKqkFwWXxV/RFkGiAHXOTNngi+bwf6jTbwLM/r2uEu3R2H5N3Y14FF
	8VTkEVsp6ulSP7NC3x4jcssCQza7X54A6i/Nyzenk2rZVxpht6cc2Oi3BZQG3EyMEb0QmQ9CVaZ
	r7wlVfer++c4r7vqJFCSg276Lw==
X-Received: by 2002:a05:6820:60c:b0:706:5b0b:4e74 with SMTP id 006d021491bc7-70ba11762d3mr238542eaf.5.1792810947509;
        Fri, 23 Oct 2026 20:02:27 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:27 -0700 (PDT)
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
Subject: Re: [PATCH v5 05/11] phy: qualcomm: qmp-combo: Add hardware-specific dp_aux_cfg2 and dp_phy_cfg1 fields
Date: Fri, 23 Oct 2026 22:01:30 -0500
Message-ID: <20261024030142.13643-7-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-5-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-5-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_200228_609985_5D2AE1E3 
X-CRM114-Status: UNSURE (   5.15  )
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

On Thu, 01 Oct 2026 15:04:22 +0530, Nabige Aala wrote:
> Add dp_aux_cfg2 and dp_phy_cfg1 fields to qmp_phy_cfg to allow
> hardware-specific DP PHY register values to be specified per-platform
> rather than hardcoded in the configure functions.
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
