Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF64606A31F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 07:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C0A26h2x;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=FsStix/8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5v2aC2vEsc/c5GFvXyCe9Te8JgAnN0P1/qQdax4nrkg=; b=C0A26h2xsbCav6Xy7u3p+lhtEN
	cbO2+X+SqbJQQHgZAViFYSnD5jKvbcIORyArRNnRKN64QVN8RFiry4jX+wLQCQutYAPlglVvkxyaB
	+mJnyskx0XOFVNUrNiJX6i3+s066Tzb7KoNwKtlnUDAKUaMzN4hTKuIavFrpVHghINU1EdSycij1Q
	EA1jTVKOxReKt5e+gi43TYbecXFSMqlzYTOpSZIH4kHyJZt8vdbOl1JrEu1cE+ENh9Wadyu+wOddY
	mpqtvWWqG3GnY1DqavXEgE1Weofq9Lb5jV8+RE7adsbCPlCWUz2iw42DWqYNvfu9yWXWBLGpJk6ul
	dO+r6oBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbIb-00000003t6q-3gXs;
	Tue, 27 Oct 2026 07:08:45 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbIZ-00000003t6X-3qDU
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 07:08:45 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3ae2b7e1e17so823977a91.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 00:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793084923; x=1793689723; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6zazjVTQz3Lc+/QZ9WoAd0ReZCneFGPIxm+AtvJf/J4=;
        b=FsStix/8nSBcSqJOIiuc5rwfkfqQV2sg6zLGol7Dc3r6pEg6ADciIvsvZdCOagV2rf
         buQ8Be4xp4JU267KVKCj2Pog4Fw/T5iDPHXKrNpr2Qc0UQQ963p/CJSGpQT8lc49O28V
         5I8inKvpY2RfiVB7Kg6HPJfNyoHc9KM132vrmHjvGCqzTwtoRrv6OHD+sI9qB+Pvr5wN
         bkTBlLXB9lDm59d3G7WrsKnIl/lptJVaP/7XfXjEWw4KCDpjCwFm51XAn1LrnuPbhKQa
         c0E24DikaCKqKFbTNjgQBFrlMSYBVAmypV6xTh1tQMQY0mMSIAlCPBqBBQdcaqemTDzI
         yIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793084923; x=1793689723;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6zazjVTQz3Lc+/QZ9WoAd0ReZCneFGPIxm+AtvJf/J4=;
        b=kT5ex3TQnuiMfy9M87o1XOpLTwpZSczpTgVEmdNXg5mHyUx45GdGAZ8xTBrX7FUP98
         DtLX1Bmdt3CZAWLuRPPpt5Ob2f+7WqpwCcTX/9RPmnKcP96Hs+s5NHzqkb5xfUSdjMQE
         IRPCAMOfXSl+B26BtXgYAxCEblUoFkcyKf3h1NDAEJW828+8PHXIjpeGZkpHRMCLFLFk
         2bi2zd19zE2Vs3L1OxaWPswTFKT24JJzvp5k0QeP18Hp3sOXMN+KsOh6bd9MBn0+dqTS
         vr9GOSpTxitUJhXXPooSRHHwv30NPEZnHQIqpfhsCgJf1c4e2EgDrPWfnKl3s1ZnXie3
         KPsg==
X-Forwarded-Encrypted: i=1; AKwUvByGkT/FRBCiars7tNpVJYFHW6tddLUR4CyD2SiEmWKv30NuasUbNAJZ+tPwrS6RG7OO/JIYivR1vtM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJLLOikJSX4yWG5y5Vnllc5Q94cS4uTE+8y0aEMt+3rqskzRMG5
	QY21YTEA9uvRjTAHb7yoSUvkY1jhT8C7Y+of2o71tJ3wQjp1OyaJe2w=
X-Gm-Gg: AYBFou1BRrD8Vw+I8pIxlpE6lC2nT2m7kRCkuh/LJgOcMwrKVfjPVm5Dxmdf+oxrgU4
	Yb+Euu1iHBlGUs4yxAirvOS02sDuMHr0H+egsSgyA+RH83xFoqM6BJs9Zzw4vfvtq9+cTlL/vUZ
	m5qSbQ5hdykmZBWR0hpQ5kkbUPsTRZAOjFkyLohQE+8eO7n6LLrwC6M8DnSyJbZYBwucFXbcNzz
	g82bx+YDgCktdJZ7v7bVXEcRLIrB2EZb73QqQAHF+7z1Q6iOyAxnGonlVkG/BFwDz1+DfBnj7gi
	4lS8taXQAQ5xIzQGUvT93cDtc/tVuxrfmKqQlPyG+b3VUay2YEVt6KvfCFGsm9Hmx7O4b6Y853s
	+c1HiERDUb1Dt3Sf+O/JaAI7CvrHRMRtf5393Q9Uwic1+B4u81cJH+3Ol87LGJYxlrwXgkpdF5C
	CoGhLN1/ezuUPXh8QJUa2adQr4VoOWJao2b6bCgyf4veYxBxDKyTUPl3VBgLN84Spcv0rT5/5f+
	dyL04EZ6G7LAO0ZLT3Rczl4X1Jv+3cYcRf6YGSCgmh0kvG6HuQp4YRPTMNAYVC01nUMQEPunc+Z
	u8ZPSYVVqihoi6vDWifqRdC2E2dYuo/ykmM=
X-Received: by 2002:a17:90b:3941:b0:3ac:eeb:e0ed with SMTP id 98e67ed59e1d1-3adead5e324mr7265729a91.36.1793084922903;
        Tue, 27 Oct 2026 00:08:42 -0700 (PDT)
Received: from [10.1.1.198] ([71.212.222.246])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae401bf352sm2540119a91.0.2026.10.27.00.08.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 00:08:42 -0700 (PDT)
Message-ID: <4934834b-41ab-4663-b031-d04d736e9fe8@gmail.com>
Date: Tue, 27 Oct 2026 00:08:41 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: phy: qcom: qmp-combo: Glymur USB Gen2 fails on one port (chip rev
 2.0)
From: Burke Cates <burke.cates@gmail.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
 Nabige Aala <nabige.aala@oss.qualcomm.com>,
 Mahadevan P <mahadevan.p@oss.qualcomm.com>, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <5b31ea48-7918-4f0b-b012-6915b384b922@gmail.com>
Content-Language: en-US
In-Reply-To: <5b31ea48-7918-4f0b-b012-6915b384b922@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_000843_961199_D8C4D2D7 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-2.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26/10/2026 23:40, Burke Cates wrote:
> These tests used v7.3-rc5 with out-of-tree Glymur platform/board
> patches, including DP PHY support. They were not on an unmodified
> mainline kernel.

The end of my message was cut off when I pasted it. It should have
continued:

AI coding assistants helped with the bring-up and this report. The
logs and test results above are from the recorded hardware tests.

Thanks,
Burke

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
