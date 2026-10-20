Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9129B606A319
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 07:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rtFUpGzo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ATwqUrpT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TTkjrJ3j
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oisRMH0pvD9V7FWwJRQreMewUe8MnQyBguggprWYypQ=; b=rtFUpGzoRs7/C7
	SQxmVgiCDCXsmI4Z4HCvjzj7e3tu5trSA6wLq8PN+jv4nEoyUdp1GBxN2hg74oRKi+slX7wHbbTin
	U9lVrPrb63l0yf6l01wfi+Aj+cXH3CQ3rgPHL3bs38oehp9SOyZkxX4SuT7ZQDaqixtr5tI+kU8bo
	1gxAlpfAKGjlX1O0TEQn1TAV5KNfAsVHVVJxqaOQBQhCVjCkDetJiY2Mx7nHxJyG6mdIP9P7kTE33
	9S8NRQVIXIE9EAj5wu4Df96tVr+upue8u5DajoiO3Pt5x2p73n8gtOyNoEvVpMwZzzGlKJh1oNbyT
	igOlQVNRA2DYXiyltRuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4ky-000000096fH-0bGi;
	Tue, 20 Oct 2026 07:59:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4kw-000000096ef-05SI
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 07:59:35 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69K7hapc1582564
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 07:59:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQ0c+Ka3BvYj9l7owSnPasgWcDbrGJPG2NffFjjy3VU=; b=ATwqUrpTa3/ynK22
	sKuyEDO+O4eBnz2lI0YKUUEuQ35h61YLFHBrLxNMgquQCp8iLgAPXUdPOmqXNTZO
	60sfiNliEuYZWkqOAE5vgqK6EYx1T+Lbp/Obbc0gW0GspcUhlHiGXI8/dDyJ81jw
	w/kFyx7e6B16k5vFFusehoDp2VFjKeyivUKf4A+KWolO+tduNREiuVSaMnZxQ5C0
	h2yqZTamzWKPP0/7cM/mqjqDZW4JacVDyS8rUSmb6fXVHTIL+Z+QAxqK06gu1VhJ
	NSYxKissE0mO5SKqenqcAi7pOH+D2o9CpY8aA0xoCBTSNd5AzEZb750EwKEAcOD5
	fIhF9A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5phh9t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 07:59:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93ea6b66e53so60965285a.2
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 00:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792483172; x=1793087972; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JQ0c+Ka3BvYj9l7owSnPasgWcDbrGJPG2NffFjjy3VU=;
        b=TTkjrJ3jVSpmal55WPGdkMRYI60hl8JXXn/eVxT7HOUMmkq2JA0e8PoSjnp1R+X0dn
         sog3+KCmujFrKJ2Un9DlxF3cVG5+KddUj8ALMO0bGWRd4zUt6bno0EAROoTfa1Jk0Za9
         bYiXYMVc3fGYb93FkMR1RHIWLDOrY9oxJohQKb8CLuOtJOirrsLNQ63QnwIoat7Mt2Eb
         yT6Ghf986kaL6vpeVTELyEtLn/5SuVt+jiKpC9Z5dsV+kk0VFioEKqY57qkcsATUe4cj
         MjkKN7zQfVcWTdehCqxfczLfe3oVa0zPio/NYOJTWRWRIzKTHtuQzZx2uK/mXL0Nxlj5
         EI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792483172; x=1793087972;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JQ0c+Ka3BvYj9l7owSnPasgWcDbrGJPG2NffFjjy3VU=;
        b=eQA1kVageshUKfuoSIkLrMm11fO5t4PgUCmEMaLwV6giXYLDbxxz65GAQXKplHU8Kl
         sqPVQpqDM+pd4Pe2efeqiUAnKHjCrUNgulY1rx+EpcCMTfQS3+3G9lUNcIcP+7rsC+pJ
         uftJt12zWcrE7azQHmw2DH/8yD+wH43mcjFaHtpiV18hbJauSBiSd5iZZ43Iy2LI1i4P
         eb0dZxxMW5R629Fkr9fFVgGMBDRnF0xbSdhCVT160oVe0a4TQYLetAqQ6eENhc6i7dNi
         7tSxuiUQ2FRhP5/y0EJT+p72TsXIWquE4Jj65Dwxya4O5uPRKeC/KJoeG+TqQh0u1dAc
         ENjg==
X-Forwarded-Encrypted: i=1; AKwUvBz/5mMnFn265ZPqy1JBhskGvXmyeRgN10jXAjRH4CluCyZl7oldhwXZayFzh6sm4B+MSIJjYQ8S6XA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIY4P/eh08/cBDJPn/nTSQMcrzVgxPb/+OuVLVKoh/M+yMbr3Rn
	f8ACaNCRkGt0wCrUunc/p9mL+2fm/Thn6QhNMaVPGqwaAddmeGTQ7l34+De+e7XM2v4/5WoxY6O
	4DeYlHdMxmd6BpfvPymMSUhpS92REdEL+HknBQijcKCojCF2KeA1sMDHILQlKY5AZMkmjMtJ+lD
	lW
X-Gm-Gg: AYBFou1ilEtmiBYy/8JuJ2+lPfVIxtKa1JNB3Sd67PAYUziQ9mZ4ZhxndPsG2cxob1G
	Nsm3EIXroLou5K80+ld2bAvnfaYLmAm7jIKgnomd5OJGfNlXdAEscm1gi52UMfLDVXyuyD8XZZW
	AUmT7SW897eQHh0ZnPbD8KMyCY64/Dmmv+BONX8azhbKu+6C97Y7QE3Xh0CCpRMHFqyljc8M+1Q
	Zebx1yPobt3a28evVSDaLSjPARUF1rT6LYHgurOIE3ATcF6yfRqdVPR8lPazbbL+w/GW3k5pVv0
	MVvTJOT6/TB7KOpUmWy+BDCv2N0tfGueysYqrUvJ0gUvCqsQXO5QB7OwOp1h45x3IaicKiomnWN
	nfb0SYQTiTPEeAj9yJdh2fA==
X-Received: by 2002:a05:622a:8d09:b0:536:662:3776 with SMTP id d75a77b69052e-536460146d1mr137837631cf.3.1792483172219;
        Tue, 20 Oct 2026 00:59:32 -0700 (PDT)
X-Received: by 2002:a05:622a:8d09:b0:536:662:3776 with SMTP id d75a77b69052e-536460146d1mr137837281cf.3.1792483171696;
        Tue, 20 Oct 2026 00:59:31 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c408e32897fsm456214766b.2.2026.10.20.00.59.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 00:59:30 -0700 (PDT)
Message-ID: <4f586fa8-e7c1-42fd-b853-a2093e8a243b@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 09:59:27 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/13] Enable USB3 for Qualcomm IPQ5018
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Stanislaw Pal <kuncy7@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
X-Authority-Analysis: v=2.4 cv=a7WlZkSF c=1 sm=1 tr=0 ts=6ad71f64 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=UqCG9HQmAAAA:8 a=C43bMXcMikSIT81_BHoA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 6x699TOOAZ6JOsMw9gKCFXbqaLr0WrWY
X-Proofpoint-GUID: 6x699TOOAZ6JOsMw9gKCFXbqaLr0WrWY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDAzMSBTYWx0ZWRfX4KLrMucMMtWa
 XNhHF8rwurQOjyfN01BkxuBW1CK9H6fw3N6jvNP2SCKYvj3OQyG3a/Di1xzuPm9/k3Y36lPNABd
 8MfZKM3DHRGZeXAQ5ELiEMGeue6FcVgXQCzR+T56mLEAPxceLZqDkOgDf8XzIZcRgngDu3c5/0W
 Pq/m27UM9FH8HMv0e0EB2NZY2FDmZat6GlcCcyaxknujfl0vtc3pJ1DoTz+qbJUJW7OReZOXuiC
 BBQdb9bzHoO6k9cq7cSBr6neClhR68InufOI1Jg4lJ04uv8bSchCU8cOjrBRl8WoHG647vTH3Jk
 CiyTbHYPfa+TpyWIdDezPc70ii6VHqDwoth35W9IuSmPpac6tPznTYdVkb3CjZSvF4qkQdakMPU
 Tzaon/9yVviVJxEAYD4Lwd+DSc6O3wLUhgjvOyl/7GmvXegm5XS/95qxOyQkaeEUUi7PiPknHjr
 +vC9o3tVDyBTM5NfwIw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDAzMSBTYWx0ZWRfX7ytptgVowWEs
 d5BlWvUn0TVD1+Haid3AlGtqJVFjm64TBXjaR6a+dFE94ljlva1KZikbYgRGHb27ANEgEWTk/ce
 zL4gkD4DOmvnGY3/jalTjeesW9F0w80=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_005934_182575_33386444 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/8/26 11:40 AM, George Moussalem via B4 Relay wrote:
> Patch series adds Qualcomm 22ull Super-Speed USB UNIPHY driver support
> present in Qualcomm IPQ5018 and IPQ5332 SoC which is required to enable
> USB3. This PHY is interfaced with SNPS DWC3 USB and SNPS DWC PCIe.
> Either one of the interface can use it via the mux selection present in
> the TCSR register. Current patch series adds the support for UNIPHY with
> DWC3 USB.
> 
> The series is now split into 3 parts:
> 1. Flatten USB Controller Nodes on IPQ SoCs
>    link: https://lore.kernel.org/r/20260906-ipq-flatten-usb-v3-0-13e4e0f63123@outlook.com
> 2. Enable USB3 for Qualcomm IPQ5018 (this patch series)
> 3. Enable USB3 for Qualcomm IPQ5332 (to be submitted)
> 
> ---
> Changes in v4:

[...]

> - It's worth noting that I left the logic to register 1 phy in this
>   patch unchanged despite Konard's suggestion to register both
>   (PCIe and USB3) to avoid changing the existing binding for the
>   existing PCIe phy instances in ipq5018/ipq5332. Although the silicon
>   is capable of supporting both PCIe and USB3, the instances in scope
>   are wired for single mode only. The next patch set will register both
>   PCIe and USB3 PHYs for the combo PHY instance in IPQ5332 and use
>   #phy-cells to select the right PHY in the respective PCIe and USB3
>   controller nodes.

We need a bindings change either way, so might as well do it
"right"!

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
