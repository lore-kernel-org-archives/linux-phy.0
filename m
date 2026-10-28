Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EB8606C00F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iZ76NVm9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OOglMnDj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eVfYfSJ4d7s5dDB2S9XBjjn/ksE3r8djxzy/vIB2Pj4=; b=iZ76NVm9fimyOnYr8WwbA/tOsv
	zQhrabjtO1YnbzwllDi0wtrn5Vv7HCz4pJ2c/zYrFE9j/Q8nE/JM9svaRT9Rjwtaz43mm1Aeisgva
	SFBCdQOmhgagO7id3MZ+I/IC2zMDT37wIBKKWNZTyGNG8wdfCUEy1rACWpIs+s/MdZie5K1werAs7
	XzShipOenL8CbPxZC7TKwfyS7LaBQVW0B2v1HJxBaQCkgHrb+9FD3pjkihJ5u5T4wSMavp+vUvi3W
	XugVsCRn0Y7vf9fQ1b/c6QaX6RcmS10B3ZsrYDFhpVgoDL1VonQHb1MpCvCt3oC5HpH9fP6QPyXLK
	5cWBa8/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5VO-00000007Mb0-3O7o;
	Wed, 28 Oct 2026 15:23:58 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5VK-00000007MYw-3b7V
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:23:56 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-3ac9f49b984so706307a91.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793201033; x=1793805833; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Dl9wCZd7aXQK3/hvAJmLj2CWEPQf32CA5XL7IGwgTcI=;
        b=OOglMnDjDIn2PNvyShG82Wa966BSZWvsLHvNvb/XjG8jSTXdXNG2L19LtwUSWZ8vXv
         uFhYsJCmiwt2/E1zoiTDoINArXD/O4UrXNO/xRfwicCJGWDv53zkvn4VmvpGX1hc4FmC
         SRohlW1hoyPHWgFRKFbLSc+gGdPR1sxmGC3haVzIL+Soemipk8QPVxDQFfvPJHfYd2cd
         n1QmK/7fYrBHp8wL7ZZJ6qOBmwNC6zNavVa1r7FlBqNW4p3p+8td1jndiiSYELM7XdFC
         FqBVHqBj2HjdbcDLRFv5WEYi+dvzlbBm1L8m13YC0DfLn1foGUlTqbnSok+VSry6ZROx
         HIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201033; x=1793805833;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Dl9wCZd7aXQK3/hvAJmLj2CWEPQf32CA5XL7IGwgTcI=;
        b=V7dXvDBgt73UPgpRqrSR3VJF0rr0iqE0n31DY8TbjFmnZoHYKTRgSYk7sA3NfNZVju
         M5nVrzdPC3Qs/jpWPRUF64xWoARo7fhlfE3X0WPtlu27WpP/GO4lSGWM5JA5pAd3k8Je
         TbtPsD3uNm0F4tYkvU2/cCgpVlZKf8IsSQACXFnxicGu1Y0bNbGHuoPceaSD2GOoia9+
         KwswFM2WJ3S4NEBXIxqNCutmcmfyP7iZlFvfTHvJqfihgBelBKJZV8N8g7YJYPharDuO
         q8710cDTAomPmKSikNeo9MG3CYVfHuaUx7RqZITSNBq8ADGw5AfKFheYTQ+tdRTnR1Rc
         i6sQ==
X-Forwarded-Encrypted: i=1; AKwUvBy0aCFgSHT58uqA/KL1J8ak82fcMtXDbNuS6J3hZfaKsmjn5vigC0fpPad/bP+8jgX8qUkG0oPj/j8=@lists.infradead.org
X-Gm-Message-State: AFq9FYK15bKbnbb9p09mQ5n+LW5cWSgl0z9s9AWQs+BpMz3sJtaLLaXp
	B+59RqDtNbjEdjcHh7sk8WDJaSGq210LNU3D7GMYmgECA7u8hyiRY0w=
X-Gm-Gg: AYBFou2asawEp50aA60QFcrj+HtASYn0sjaOm1ax08sTKwckH17TnshREXpCqNNPrdQ
	5Fsy4puzCG2TjyawCVMgVK5sKZNLJogTM63sIobvwZnrUCjzpMqTtyI3eR6q+fr1zhOMUPhAjh2
	T/mmAzLFbNXH9S+Yv76BovQqA/6lP31l28Upaq9jSxKofsOrhmungE7/twxczpegGR5NdNphgnD
	mx1k8cdGuk/CN1HDasv+AqKJsgrKtGP3hItjTrglUusoGQTurXHEbaJvHn0H9/PybQm00SQ3TH3
	Cd3TMzeX0aoeR4cpsJz02pu/bxK7gbZLnDlbOtirq37Qc0Nqo9FRJFHOax4tTCGjssTjpP9FbyN
	vmZ7dOTUG3Fz82Od4kwN3F7f+XihZ1H/AAvLifF3mBesx4LLIWqklJINy43S/7wpgWX+0CKFlTI
	Z//ta1lftqXsgFgrMxyL1GFj98+X5VlgsrJGX9FMCY6YrTEUN0JLZICv4bZq9QyD2sVBHltRkLd
	3WisFfTTXpf/EYaClujz13JXc+/7vPBmzxM9iHXuMLsyB8UUIDj+nucDxl4ivZIiBjm7JJjpVDe
	h2dHaL4DQUYia3beqH6168K1d1jUWq0NlwffNs+AVGjpNBdbIyHH8RHNHnM79JE=
X-Received: by 2002:a17:90b:1a85:b0:3a7:d9bc:d204 with SMTP id 98e67ed59e1d1-3ae403dd709mr3918191a91.17.1793201032676;
        Wed, 28 Oct 2026 08:23:52 -0700 (PDT)
Received: from [10.1.1.198] ([71.212.222.246])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdac68402a1sm3415834a12.1.2026.10.28.08.23.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 08:23:48 -0700 (PDT)
Message-ID: <a59c982d-67f2-4e86-a110-ac7c1e0f1a6f@gmail.com>
Date: Wed, 28 Oct 2026 08:23:44 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: phy: qcom: qmp-combo: Glymur USB Gen2 fails on one port (chip rev
 2.0)
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Nabige Aala <nabige.aala@oss.qualcomm.com>,
 Mahadevan P <mahadevan.p@oss.qualcomm.com>, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <5b31ea48-7918-4f0b-b012-6915b384b922@gmail.com>
 <76e97352-3a54-40de-8ef0-eef0ca27ca73@oss.qualcomm.com>
 <830ef909-d0d9-4f4f-8b73-0fc0cb7b46eb@gmail.com>
 <80fad9c9-4a90-447e-96cb-b1fb0ed98a36@oss.qualcomm.com>
Content-Language: en-US
From: Burke Cates <burke.cates@gmail.com>
In-Reply-To: <80fad9c9-4a90-447e-96cb-b1fb0ed98a36@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082354_900717_EC27B07B 
X-CRM114-Status: UNSURE (   4.29  )
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

On 28/10/2026 05:22, Konrad Dybcio wrote:
> Is this something you've also seen with your local changes?

yes, but only one data point. I'll roll back to to that later and collect some more data. Anything you want to see?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
