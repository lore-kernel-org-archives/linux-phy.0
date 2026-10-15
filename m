Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E524CC6B34
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 05:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzM7tfB8ojWdpyB+Hn9D140QjAlBuJ6Sr+/VCRNqbdA=; b=q0CiBrWNZrm42G
	MPV8ETlLOVD5UCsnYgzm8dKAVyp0MxzVdiVJ5W62+2Kc5iGmIIZfQcZqwPPkDaeV2SaFa0DIdpSab
	kD2wBiZcuNOY2DRymGpMqoPVpKYf68YGxUXyBjER9bniforJNelYlIlqc34G7Ga75kHMUaMbvnOOp
	4lo9FsAL6iaeVCwEnfVF7euhPMBpq2xceFoEcQnamjw+eI8W/mXvmg1Xd4iSJmtEhKzYFdVjnAZqf
	DdZ4uoHD38TAyYgL2F/Gzip7vN/4vmkX5J0Nt9Zjn/bGzlDzMt3NddO3yZwWN3d4Wc3M+tGzAzrSP
	yxBIOB1r9NBpFvKfhbmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHDk9-0000000GqT8-0qgO;
	Thu, 15 Oct 2026 05:11:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHDk6-0000000GqSb-1NU9
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 05:11:04 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69F00U2f2121588
	for <linux-phy@lists.infradead.org>; Thu, 15 Oct 2026 05:11:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jUQL9dOzv2INUxvZeNwYyMv07Pcun4iuIBhgEk/JqT4=; b=iFiYzgo1QWBlPjzE
	RtUHieRmkWw7GaqhtFp5PmLhyulxxtnaTgS3axv4hFmAxYCx1Z+b60Cq/tauSx/b
	l4qrIdg+CuM3dJo4b7EtGxSLru9SAHaIhyMMg1a+KKG2gz4TraHCnyj4LDrZkdD1
	ILCOuRj6N7vUo0uTW9TNg/YlHIy2YawQA5y0N5XuMkrX8AAUjuzHhwy5AtZiLJJh
	yqZvy9lHS0Zq2mYIhbl3N0ezwLvVZ+D9MA8N0jWprEaLpX3XBzuw//i5cFZX2jvB
	eFGdJU8quGVCL8pR2Q49z8o6nKzAyG2RJYDDqm4UxzaUBbgikoUpCOGvzytzWEL1
	89MDvw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hakwn0x5x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 15 Oct 2026 05:11:01 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-39deda201bcso7962341a91.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 22:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792041060; x=1792645860; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jUQL9dOzv2INUxvZeNwYyMv07Pcun4iuIBhgEk/JqT4=;
        b=KblenwzDaMMDOOZt8X1cXPiPcGIv0btb70A0hoL5q/K9RzpbzczQsKejnLGaf1FM7M
         WHrREm24o6eERB7JCghsrOJn3/HcIeK/kxaN08byH8vJ4JXWOQ7AmCt3XV6nh7oBEcoG
         6XFaN77MLk87ATG84lafMKss04Czu9ZdYyc23ZDK3Ip9P2WBkrOqcVld2yfJtO7mkYb3
         DAY9hP9vzznilTQ7p+2hDLhafPovuiNwGsw+cXu/IZXVYUBnZrKNF45lkEzOnGEDOfUr
         K1+legAID28j0V527EiyPM6BUtXMxVxIa05O9XEkVyAPhMDxWXiJiTtqvBup7XUxGNky
         LTWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792041060; x=1792645860;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jUQL9dOzv2INUxvZeNwYyMv07Pcun4iuIBhgEk/JqT4=;
        b=bwcLFf8xFaaGW985l8gPAlOen8p02K7xuG6khOwt0d8NxcLHKHBMWR3XCS9X3PUP4T
         C2iu80Kr2wrC/BEABhIqKh8Wio90cp0a5FviS0HvAIU5Eth6kUnbtWNHY7fns751qAXm
         384DcTRQlb/Nar6pZUEiNS9Fb19AoJEKxQPxXPDj+lvcptmcY+UT8M/z7s76nUUBmSFF
         EjbmT1VRqrf/D62Y/jQu59/qIs2FwH9kHC+A9yWLaEknjAptnkCDUPUB/qhDQRkUKJYy
         LFFNmZ6yt6PW7j1YopRZJgGi36MEytpBVMQvJbmHyb8PkQM/XATyAYA2H6u1/LJK/wZI
         LGfw==
X-Forwarded-Encrypted: i=1; AKwUvBypcHRlFJQwltljQEysVNfwddDl1DPID7SrAOc9368WwEZPgFf1EcBcOH6wfWYFUtrBV1YWmJGo8xY=@lists.infradead.org
X-Gm-Message-State: AFq9FYJa8gBUdu7Uq530RPdes7TZKBKIWQ+iG3OWsv5AVLyMebv7zRUd
	aDnJ7F62x+hzhHYha0dTIUVb+I3gPu76svd0Sln6oSbCTNKA+6MkbaPspQ9CaQmsFhTOjUsAhAn
	YmnYYJ6AU86HS7Fi1bmccxxxtVxeFYaU9moEyAbmI3KarywJGYZVfZfUv8fZgPUD1ATcA
X-Gm-Gg: AYBFou3OsELKz4hl5Np0dc5sRYSc8e0cmLKzdSw3LNea0QMO8eImUOmzykzmAqL+ZBz
	ZuFmA/sYoJhg77sk/2yNPI6BcMXTr+Bu345/iLpOA6vbYA5xN81MIak8fwy9LDPbPiyJlZqaf8p
	dzrJ3DI4RIQUqasi79DhZb24ixEfqOMOKrjBiEboaX8KC5YA6aAPGuNS7G+6eysrnbtxWX7Rjf9
	QuOMT1DkAUOWVHicscSUOmv78zXZKq+REgV8igVYwc0iySEhc8/7zJo4FZTYZALbsWlUKX2AXFQ
	ke3KtnSfCy5IbReziqp4k1LDEf7QZChbEUekpWNquvvYMvenLvNcU3d1az32jX/9lPZbDQOrue5
	zrOw0/2ZYPiLKAEPs40PQJkijV4w=
X-Received: by 2002:a17:90b:3889:b0:3ac:929d:ba5c with SMTP id 98e67ed59e1d1-3ac929de508mr1843003a91.45.1792041060214;
        Wed, 14 Oct 2026 22:11:00 -0700 (PDT)
X-Received: by 2002:a17:90b:3889:b0:3ac:929d:ba5c with SMTP id 98e67ed59e1d1-3ac929de508mr1842976a91.45.1792041059761;
        Wed, 14 Oct 2026 22:10:59 -0700 (PDT)
Received: from [10.204.66.72] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ac947cf9a5sm2342462a91.15.2026.10.14.22.10.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 22:10:59 -0700 (PDT)
Message-ID: <cda2257b-4d7c-42bc-b402-3b720ccbe7d1@oss.qualcomm.com>
Date: Thu, 15 Oct 2026 10:40:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: media: Add CAMSS device for Hawi
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
 <db980e07-adf9-464c-9fee-401581986508@linaro.org>
Content-Language: en-US
In-Reply-To: <db980e07-adf9-464c-9fee-401581986508@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE1MDAyMCBTYWx0ZWRfXyzjPrMZGKw+t
 HlAT7TvpdnFzUBiasoav9QPUuaayf7glDR/vr479xx8fgAHbKj7nKXRH8v5ZR7Meay9ohFxJbw+
 iG7YddHoP/mjCBeDqSznT2TNN630XDjMgexiocTKoYjeVplN3Wk1HFUneO+L1DYxpwiIv7MR4MS
 +VSGTBNx/DMtXNCK9x7VDKqAUUBMIE/48urcW1FfficbCyHdpiIHPueb0elKQ+psH2zdMBzcpFN
 a9fSCfRiUDJT4fRC4gmXhJp23Bsxu2ciUYwZfcewE/aGdCwJOEpJVYnOaSC34wgfmJieX7rzuQX
 1P/5SRdtgfPWbPZjy2yMqChxTuvGVGiUucWHiEK+w48X7Znc1bQVmx4x7iM30cTqiAs1rkEQSV/
 rkJ6UljypRCQvwfpAa+fcYf5j9gQTma1FLeRums6bdFaYdbWKDvKYsQNzHwLQqZEiP71X2I93z0
 fuH5D+syt5GBiFXpivw==
X-Proofpoint-GUID: 99P0FMjJM2U2E2tapmUdnwyUcQ7Ppdgc
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE1MDAyMCBTYWx0ZWRfX4anSgqt7y6qK
 chR5dEHvG3kYQYe7C0ub0vdqEX6UVslUN9PqyFtcotTioS5Pre0Kw4VJo/+DzZu1HHOg+IifhBO
 m1pcSK8VdKk4v3CUJecg43a1pq+K4cA=
X-Authority-Analysis: v=2.4 cv=BqUIUoX5 c=1 sm=1 tr=0 ts=6ad06065 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=AlLrfJGOdKqvsMXHV-EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 99P0FMjJM2U2E2tapmUdnwyUcQ7Ppdgc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610150020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_221103_133513_832D70CD 
X-CRM114-Status: UNSURE (   9.92  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgoKT24gMTQtMTAtMjAyNiAxNTowNywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAxMy8x
MC8yMDI2IDEyOjAyLCBOaWhhbCBLdW1hciBHdXB0YSB3cm90ZToKPj4gKwo+PiArwqAgaW9tbXVz
Ogo+PiArwqDCoMKgIG1heEl0ZW1zOiAxCj4gCj4gSnVzdCB0aGUgb25lIGlvbW11IGVudHJ5ID8K
WWVzLCBvbmUgSU9NTVUgZW50cnkgY29udGFpbnMgYm90aCBJRkUgYW5kIElGRSBMaXRlLgoKPiBQ
bGVhc2U6Cj4gCj4gLSBNYWtlIHN1cmUgaXRzIGp1c3QgdGhlIG9uZQo+IC0gSW5jbHVkZSBhIGNv
bW1lbnQgdG8gbmFtZSB0aGUgb25lIGluIHRoaXMgZmlsZQpBQ0sKCi0tIApSZWdhcmRzLApOaWhh
bCBLdW1hciBHdXB0YQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
