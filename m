Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623ED606A337
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 23:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V19L+l4i;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uQKkiNCB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1YFy61s3VIsZHWCp0cbc8fisVSSCMhZ3XrBA82lMCCQ=; b=V19L+l4ixkRR2jxhsMfDf7glxO
	LQSrZAKy8ZWSFB+eNsJBsR+0wZlv/mdRwurCzrJ/ZqgERNtZssY1v3C7Fe4F5uoS3l3Ud6uhRQ1it
	yN26iEvbBDVQxJ3SNVxmdFAY50eKI1h8dDSbkmyN3925Kzp0dAP3q8raYe4dQ9b3sfUWzYRtCV2bV
	xQDYy7BMozglIpBYQKH9uB8fgnXwBrfbeYtugwrBUl8qHlxZh5WTPv3m3hcwHdTwCfXsIPDWu9I5Y
	x4/9I2//1eR/zRZDVb+6q6B6iuJyoMW817ZIRQLrySFwI+H9YB3IvyVvn2DpJFKupZktqW0LhdpTH
	cTkpRI2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLr15-00000005xyk-3nCr;
	Tue, 27 Oct 2026 23:55:44 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLr13-00000005xyB-0jOB
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 23:55:43 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2e946155442so2680465ad.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 16:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793145340; x=1793750140; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vpayMuArKl0N+L9ZZISl3VaIV5/mes5Sw/FrduN0nwc=;
        b=uQKkiNCBgRGsilW5oHR2rtUwZ6mP4AphsMM2KLfqTVEMMRhjEUOjuAolAKu+5NHn5b
         //+SfWWb9zUqkjpb479g1WzPkC4MKPc5wYWzuI3zLAEQExpvVvHgWSnbDyjSeVeZQwNL
         cvirWdxjlw4LsFw6aLDwc14PlHhbgsLHkFwRA8O1DHlBNP72Pdrlzzs7aAu0odmU4MX/
         m43DEY2Y/RD0q6ZZ0BrrpMLBs7vkVcLlyaRbqapUQxtGQR65QiQ4f1MAgJM7CBpvFQHu
         WETRyRzINR6LARGiBsXZYd24NAKSvTlwfKjlw1tuvjWc/6DektZf74mDJ26nrst/JpYR
         r8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793145340; x=1793750140;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vpayMuArKl0N+L9ZZISl3VaIV5/mes5Sw/FrduN0nwc=;
        b=t4OLDMIjbY0nFfsRSpoIC5YJVTpTQZAbKtlLE3sCVLdsoofjZpeTkOSTlV2pPPg3yV
         oWYcUKkr9sGzl1aDD1qbZB5VE98c3g3arlvGm1o1ND5+EQDDSIFMpr5+f+NDFKwu70wG
         7HYIsfS0hGNymZgpjGvie2JRluL3CoaxszLGWN/G5+7L4T90QAlX1zL78IGoRW5Eg9BL
         5lVeZfTRQHUtBkgQCvMcE/dCmXK+hBNRvyBQwt9ET1CA79ta0ghGU05xxPKBOfq1SDqm
         y5BTCwn2Kzdr5t6CEsABUNOdXOUlvsN/7SDbQv1f6Js6sPx2r8I70pEuEHHg39tfYYiA
         XXRw==
X-Forwarded-Encrypted: i=1; AKwUvBwABLjpXsXmGxPn9izyDzFl13PhEtHWzAosHhMGln3rOiJjDJamfQiLghmKyZnv4XMJ0WGD5PEPKQY=@lists.infradead.org
X-Gm-Message-State: AFq9FYLn4/SfC7RKavGJuQ4zrzx7M0fZAyeVkV0frZ19XA/MWuMbfSL3
	lY+jhrasdG1oW7lq0FTtXq+FGiCcEA94vbBPhspzxIFcbEl4Q6tZE9A=
X-Gm-Gg: AYBFou3hMUgJZHLvHNdzu/27M9H3e8KLoO+Mp7xmakc2bDpXqPWf4IURykqGjOTsd4T
	8rQIeBSfPUPIrM3R1CEvPuZ9WRNuE67srCJa5Ux2ylHk1/LbC7YP2+BQcfIs42QhjjDbRi57qp5
	lM+ENmfNAZoUrhxjZmVbnTUHh12Oj8KWCQk9kSchA2GolbPAmwrA6kfdX2S2bPQJSYK9cQJynU1
	it/JyZxLJ1hylvk1ORBe+Z47LHzFwqhEEFcoGiAfi6XlysIY2V0TmRf3sR6Wn8UrOEFUHxB3+Kk
	+rz3aXMi9DykIPwnLglesNMWawylvC9z9OyCYtBQUxdtcMqKGbT/Jiw38aLEIXjPgE7npmzGZNF
	qB9ZGiox4HhMN285rIKswVb8GuMpCR8wSCsS2KML/gDKD3mAYikcjwqFspQmVQpWIFLOoZ8agBp
	3h5lKE5Kmm4MIaTkEgQRDuE03W/+zMtjBMoiiZmeBWDhA/Idx4fo3bqTYsMd0EHvCcMEb5EtDt5
	4/RyldyM5xj/XFcnKp9swCrFzmznC+GKx8N13jRVck+WJ7wiCLydhFul2o8fasr/xmGG5uDorrR
	R0aFdTWzJ7X8Bwp4OmwlvDB2cHnU3rdalKa073mKVVJgj+NiKcmUj3juh9Prr6I+NF806qEb5wZ
	IsqNwwELO
X-Received: by 2002:a17:902:e805:b0:2dd:b795:9cb6 with SMTP id d9443c01a7336-2eb0048808emr7482155ad.21.1793145340203;
        Tue, 27 Oct 2026 16:55:40 -0700 (PDT)
Received: from [10.1.1.198] ([71.212.222.246])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6b77e2csm14776105ad.19.2026.10.27.16.55.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 16:55:39 -0700 (PDT)
Message-ID: <830ef909-d0d9-4f4f-8b73-0fc0cb7b46eb@gmail.com>
Date: Tue, 27 Oct 2026 16:55:38 -0700
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
Content-Language: en-US
From: Burke Cates <burke.cates@gmail.com>
In-Reply-To: <76e97352-3a54-40de-8ef0-eef0ca27ca73@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_165542_203471_7C027E97 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 27/10/2026 04:07, Konrad Dybcio wrote:
> Please check the attached patch.

Thanks, Konrad: your patch fixes C2. With it, the RTL8159 10G NIC
enumerates at 10000M on C2 in 8 of 8 tries (both cables, both
orientations, present at boot and hotplugged, including a hotplug
after a cold boot with C2 empty), with no regressions on C1 or DP.

I tested on the A16 (UX3607OA, SoC ID 662, revision 2.0, BIOS
UX3607OA.312), on v7.3 plus out-of-tree Glymur platform/board patches.
Your patch applied as-is, and I removed my local PHY changes so it
alone programs the USB tables.

  - RTL8159 on C2: 10000M (SuperSpeed Plus Gen 2x1) in 8 of 8 tries,
    with both C-C cables from my report, in both orientations, present
    at boot and hotplugged. No -71 or resets during SuperSpeed
    enumeration.
  - Cold boot with C2 empty (my original failure case), then hotplug:
    10000M in both orientations.
  - A VIA VL822 USB 3.2 Gen2 hub on C2 (a third cable) enumerates at
    10000M, and the NIC behind it does too.
  - C2 stays at Gen2 across s2idle (no disconnect or reset on resume).
  - C1 is still Gen2 in both orientations.
  - DP alt mode on C2 still trains 4 lanes at HBR (1080p60 monitor).
  - With the NIC present at boot on C2, iperf3 to a 10G host gave
    about 4.6 Gbit/s each way (TX 4.58, RX 4.71; 4.55 + 4.56 Gbit/s
    bidirectional over 60 s). The NIC's link partner is 5GbE.

Under sustained load I see about one burst of "r8152 ... Tx status
-71" per minute, each followed by an r8152 reset of the device.
Traffic continues and the link stays at Gen2.

Separately, the NIC only gets Ethernet carrier on a Type-C port when
it's present at boot or behind the hub. When hotplugged directly into
C1 or C2 it enumerates at Gen2 but never gets carrier, while its USB2
side errors out during the plug. That happens on both ports and
predates your patch, so I'm treating it as a separate issue and will
report it on its own once I've narrowed it down.

Tested-by: Burke Cates <burke.cates@gmail.com> # ASUS Zenbook A16 (UX3607OA)

AI coding assistants helped run these tests and draft this reply; the
results are from the hardware runs.

Thanks,
Burke

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
