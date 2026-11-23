Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA495606A31E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 21:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2RbtN1Hj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=BuCIVmqF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TNYAw1vg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9c8ZvLQp0Q4OSQLjixoqWLpws8PwlCCVOKOpaiRO+c4=; b=2RbtN1Hj+ZymxoAjkMLCiq/nTu
	4QYZ0zu7qtX8vCxF8rGjF8Dny+LRbNDUC68K7C5xYLNnupHfMAsCmJ0CFjNYIK5rrm5ZUZ6bir+Rm
	drBX9Ejl3Src5vE5tlOsxGhN/sEe+w5Wj3f4dyrQVbhD28DijHuXfNt9zsuoitUFoVc4iyAUg/aYw
	e9746X7S3lJ32qd9zUivrRb2RZ9IZLv1tQfbCUtw5qO18Z88RMaOLzj9UcA7RirhKjbdDcjiqgNaU
	7CXQ4tlMhBlrT+Ahj6g6Oq96+qQqyNJ0w3hGnV8k2hZIGB5hFkFpH2boA7H+BD/jtrDKsJ1yE5jo4
	nznfCqaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVbkv-00000005013-1oOG;
	Mon, 23 Nov 2026 21:39:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVbkq-0000000500D-0shr
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 21:39:18 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ANJuTKr1332635
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 21:39:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7+ns+6vk5gP2peGUSfApSV2nXHAHSYEjInJo4+tuiEw=; b=BuCIVmqFVVcWBvbj
	U75IfGwYOc9E8tIA5koyD2zVDpqz74wzjU9m86s6N6FtlMdBiX+B/N3wA5TSFoR+
	3wJOstwI5c/t1GQGMxHs01I0KRzBvPML5+xFd/+Y6VIEGPXU7GzrVQ4MWQ17rl48
	09W4iw1jIyxV6o23Li3thFmvn0DT/OKXG+IYQaGU1SK7gV6l3TBVVxLLdCnq50Iv
	9i3dRfdmhCf+RfQ7SO0wigILQFACtShFMMe6KX3KU4fL+LzpkcrCMDTyocbDZDhe
	Fy/AXGhCAiqxbavPrR6ENrzluuXqq8HNNeFWW/sSp5jBx3jH3hrBKBTDTo+n93fG
	4CI73A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4g743kb1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 21:39:14 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8a0592d4539so4334288b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 13:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795469954; x=1796074754; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=7+ns+6vk5gP2peGUSfApSV2nXHAHSYEjInJo4+tuiEw=;
        b=TNYAw1vgZBSGYwrUDk37wzrrGfTsYtxxeVMuIDjCjP3OQ7HRR9sZdZBcS2SBT+Ugt5
         nSofyK6n5ue2281scZ4ENuBUUhrt8xA2butGIw2bgRA8FtEZyczY1eIqx02MXsHynPnN
         KyZTDr7689tN8yUu35qFcAqhNvGFwbqKQJKP10HSY/aQ6qs0X4S/1hZiKaZo5KAmtjk8
         MGvQUtVlwchgQBkMcH6U6rWdUwKuqI65rUhdK9tPIFWHgFNS4ynvGcMMSDQnu1qOhVGU
         iXm75Vkm4UxiM3eQL6NThxIeINjWj8cy8kM5XHZWG1qXcIvshyQ8Xw7jCispc07pojEw
         UspA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795469954; x=1796074754;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7+ns+6vk5gP2peGUSfApSV2nXHAHSYEjInJo4+tuiEw=;
        b=fawoRIhf9oDk0bgbGEXWBoJKw/tRcYZVxIDS12w1Ft3oo31pLhb02wUsFQXgnqzF/U
         pS4wdHuDJTaUyVyAnGM9jP+JzwW3jdyyQCZfcI2ORfY/lj+0507MkbweLPtTL8wZAheh
         MoR3mhSOBw1bACOwg2QAxJAhBwgT6/4xdso8TV+64WEdH5dd+YFjOxYLWdK8fiHEbL1w
         BThgTHxloI9jdCBs1bznRKnIerUZitlQVORSr1IixyCJ2FTk2ObyL+VUa1YpLyehl7HP
         EZARqsC9R75Dreb4F8sS2GeUcNUR8LJCzL80T4fxxJs/Et43k+bGJA96wrNuQee+0Wib
         jcEg==
X-Forwarded-Encrypted: i=1; AL+hErF4gsQAgwpMhULsSP2HpkFr8miZpoGrSgc4tKjMiCWQnX9xZVMCohbVGIJ/K78DzbS8u0o60Nvpbao=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Rj80Dl/5rc0/2S+ZT1iALk8+DjTfYGOhVTaCo8mb3bqqhdoAG
	lBKfqhRaQx7woLCoktHy5J2zhbZy1EYsopsscjnuMjpmk7h67h58bISPhgDKOWJWaaOOnUmsLGP
	912puJS8kqL1pRd57I8z1sXJRokPS6fEhMneoGo4lvdKSHhJzQ2sFhEyPV4tem+SRIy3S
X-Gm-Gg: AZFdTZcSZ7gCrHO7lpwO8ZUeAlBpkEpVkZ9ykUDAEt1MWrYrFzvMmISFKVLbieYMdCo
	HNogsXlgqAfe0u+EbDUz/jxZ5q1K198T8jFq98yWLuj5TAmEtwd5qU7Q6CpOg9ekyWj62nvHGVQ
	p7mf31L1+LkZjfcDVsrTV8eQ7YLW8uYz3rMwuf2vuTe0dZRbOM8QG0a3YyBaJiGfwWotiK7ap8d
	jnqPmJF7URJkIjNZWr8crDqdPsLZ5Htr2DttFAEdEJB0RY4Au6odGwSoJaQUoZQNaAe0WBmTsJi
	OW1G4vt2agbNjIGZNDnV8a5/f/82G0aDfcicjGpz+fALKJaupUF5a7rFp1DV4N/8YZUukCouOPG
	SQBIbf9UiaO6yltMMqZHsKWX7uIpHYhvAYtQeWV4d6MRETOE/2Fuo0M2Q7cPUfRpJjlEImY2acs
	j9hI9FBD7nOw+XV1jjh5vieDtS297Xyir+BYd42aO6
X-Received: by 2002:a05:6a20:a103:b0:3f9:6c3:4c12 with SMTP id adf61e73a8af0-4014c25016amr14693293637.15.1795469954004;
        Mon, 23 Nov 2026 13:39:14 -0800 (PST)
X-Received: by 2002:a05:6a20:a103:b0:3f9:6c3:4c12 with SMTP id adf61e73a8af0-4014c25016amr14693250637.15.1795469953066;
        Mon, 23 Nov 2026 13:39:13 -0800 (PST)
Received: from [192.168.1.8] ([122.177.242.156])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87353b889sm6213767b3a.42.2026.11.23.13.39.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2026 13:39:12 -0800 (PST)
Message-ID: <680fcf4e-4e5f-41fd-868a-a0ce58ed77d5@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 03:08:49 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: linux-next: build failure in the final build
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Mark Brown <broonie@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Next Mailing List <linux-next@vger.kernel.org>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <c631c19d-4fcc-4881-a6ec-9dad24419fe4@kernel.org>
 <b7fda918-8355-46da-b7f4-40e1a104279b@sirena.org.uk>
 <2fd6f05a-6dfe-40c9-a7ad-44c28af8584b@kernel.org>
 <0af7abff-2c33-4920-835f-9c5abe73b143@sirena.org.uk>
 <7ee4f5c9-58cd-4238-be2e-f092acf3c137@kernel.org>
Content-Language: en-US
In-Reply-To: <7ee4f5c9-58cd-4238-be2e-f092acf3c137@kernel.org>
X-Proofpoint-GUID: H90XelFyjoKg3o1q-yGe_-fjHR2CoYIR
X-Proofpoint-ORIG-GUID: H90XelFyjoKg3o1q-yGe_-fjHR2CoYIR
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIzMDA4NiBTYWx0ZWRfX4TMUmkSKvCHb
 QOkEROjSeZl8eGNib2V5Q3pZqUBtdWgtturan9ALeAuMWbCfrCsTop6MIFkstXWOJaxy3s0wv2I
 b7YKS8+exXSw8uzuO8jCWstL0SK/5Uc=
X-Authority-Analysis: v=2.4 cv=T/cZ3PKQ c=1 sm=1 tr=0 ts=6b04b282 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=EbDk/eETi6Q6sYbTlnF7GQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=yr0mMJ_9gDnwHveZjjMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIzMDA4NiBTYWx0ZWRfX9S/uoptXjhlT
 NSOXPE5u6UPD5UkqOyt9PYvZjLuyfYg4u5Oait/7q9iCkweDlMyot/ZO06p5vwGwskOK+BC7LyX
 7ewgUV25WWLPfjAklAHPGrimRGs/iAb0ojNoKh9+hEnwXxZ5G/M+oc/4GifZTK/CfzqpTbwuHuk
 U/gWqZPcVjXTTgfzbWrzbJAawVktzr28hN9+7bHVKgRxfRltuW6BYyGabKH1grpDjYb7FkO1scS
 KvJPVwcp/WHF5H9zOlHMSxsmZBSAksWdaQX/RcszBmk1DnuzV3Bmir3YpInBdmLC6yXGTcXiBjH
 OyAzz9n83WglRSNwTJtcanKmjC/5hSgFeGuAdObOQhVXE1KW3MfCDTHRY6bMcOZtHiZXbjE7a/5
 ParUWjaMoAQybLw1hom8zcXkI+oU9xXOknJZzb3R39hC/UYyfAw4it6HG5auJQqIc5wnUDspZLz
 mgzy+YtHXDRCBxlCA1A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-23_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611230086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_133916_360373_0833D8A7 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: 0.5 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgpPbiBUdWUsIE5vdiAyNCwgMjAyNiBhdCAxMjozMeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kg
PGtyemtAa2VybmVsLm9yZz4gCndyb3RlOgo+Cj4gT24gMjMvMTEvMjAyNiAxOTo1OCwgTWFyayBC
cm93biB3cm90ZToKPiA+IGhlbHBmdWwgdG8gaGF2ZSBiZXR0ZXIgY29tcGlsZSB0ZXN0IGNvdmVy
YWdlIGZvciB0aGVzZSBkcml2ZXJzIHRvIGhlbHAKPiA+IGF2b2lkIHN1Y2ggaXNzdWVzLCB0aGUg
ZWFzaWVyIGl0IGlzIHRvIGdldCB0aGUgY29kZSBidWlsdCB0aGUgYmV0dGVyLgo+Cj4gSSdsbCBm
aXggdGhlIG1pc3NpbmcgY29tcGlsZSB0ZXN0IGZvciB0aGF0IGRyaXZlci4KPgoKQXBvbG9naWVz
LiBJIGRpZG4ndCBidWlsZCBpdCBmb3IgYWxseWVzY29uZmlnLiBJIGRpZCB1bmNvdmVyIHRoaXMg
aXNzdWUgCnJlY2VudGx5IHdoZW4gdGVzdGluZyBvbiBhIGRpZmZlcmVudCBicmFuY2ggd2hlcmUg
dGhlIHNhaWQgZHJpdmVyIHdhcyAKZW5hYmxlZC4gSSB3YXMgcGxhbm5pbmcgb24gc2VuZGluZyBh
IHByb3BlciBmaXggYWxvbmcgd2l0aCB2OS4gIFRoZXJlIAp3ZXJlIHNvbWUgZnJlc2ggY29tbWVu
dHMgdGhhdCBjYW1lIHVwIGZyb20gbWFpbnRhaW5lciBWaW5vZCBsYXN0IHdlZWsgWzFdLgoKSSB3
YXMgcGxhbm5pbmcgb24gZG9pbmcgdHdvIHRoaW5nczoKMSkgRml4IHVwIHRoZSBidWlsZCBlcnJv
ciB3aGVuIHNlbmRpbmcgdjkuCjIpIFNlbmQgb24gdG9wIG9mIHBoeSBuZXh0IFsyXS4KCkkgd2ls
bCB0YWtlIGNhcmUgbm90IHRvIGxldCBzdWNoIHRoaW5ncyBoYXBwZW4gZnJvbSBuZXh0IHRpbWUg
ZnJvbSBteSAKZW5kLiBTb3JyeSBmb3IgdGhlIGluY29udmVuaWVuY2UgY2F1c2VkLgoKQXMgcGVy
IG1peGluZyBwaHkgYW5kIHVzYiBwYXRjaGVzLCBJIGtub3cgdGhhdCB1c2Igc3Vic3lzdGVtIHBy
ZWZlcnMgbm90IAptaXhpbmcgdXAgdXNiIHBhdGNoZXMgd2l0aCBvdGhlcnMsIGJ1dCBpbiB0aGlz
IGNhc2UsIEkgdGhvdWdodCB0aGF0IHdlIAptdXN0IHNlbmQgYSBjb21wbGV0ZSBzZXJpZXMgaW5z
dGVhZCBvZiBzZW5kaW5nIDQgcGh5IHBhdGNoZXMgYW5kIHRoZW4gCnNlbmRpbmcgYSBzZXBhcmF0
ZSB1c2IgcGF0Y2ggbWFya2luZyB0aGUgZGVwZW5kZW5jeSBvbiBwaHkgcGF0Y2hlcy4gSW4gCnRo
YXQgY2FzZSwgSSB3b3VsZCBoYXZlIGhhZCB0byBzZW5kIHVzYiBwYXRjaCBvbmNlIHBoeSBwYXRj
aCB3YXMgaW4gCmxpbnV4IG5leHQgc28gdGhhdCBubyBidWlsZCBlcnJvciB3b3VsZCBjb21lIHVw
IHdoZW4gR3JlZyB3b3VsZCBoYXZlIApwaWNrZWQgdXNiIHBhdGNoIGludG8gaGlzIHRyZWUuIExl
dCBtZSBrbm93IHdoYXQgaXMgcHJlZmVyYWJsZSBpbiB0aGlzIGNhc2UuCgpJbiBjYXNlIFZpbm9k
IGlzIGZpbmUgd2l0aCB0aGUgaW1wbGVtZW50YXRpb24gYW5kIGNvbW1lbnRzIHJlcGxpZWQgdG8g
b24gClsxXSwgdGhlbiB0aGlzIHNlcmllcyBuZWVkIG5vdCBiZSByZXZlcnRlZCBhbmQgdGhlIGJ1
aWxkIGVycm9yIGNhbiBiZSAKZml4ZWQgYnkgU2FzaGEncyBwYXRjaCBzZW50IHRvZGF5IFszXS4g
RWxzZSwgR3JlZywgcGxlYXNlIGRvIGhlbHAgcmV2ZXJ0IAp0aGUgc2VyaWVzIGZyb20gdXNiIHRy
ZWUuIEkgd2lsbCByZWJhc2Ugdjkgb24gdG9wIG9mIHBoeSBuZXh0IGFmdGVyIAphZGRyZXNzaW5n
IHRoZSBjb21tZW50cyBmcm9tIFZpbm9kLgoKWzFdOiAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzZlZDA3OTNjLTc2Y2UtNGQwNC1hZjVmLTg5ODczMTFjNWMwZkBvc3MucXVhbGNvbW0uY29t
LwpbMl06IApodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNjg1MWNhMmItNzc1ZS00NGQ3LWI0
MzctZDA0ZmQ0ZWE0ZjIxQG9zcy5xdWFsY29tbS5jb20vClszXTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjYxMTIyMTUyODU3LjExMTM5NDMtMS1zYXNoYWxAa2VybmVsLm9yZy8KClJl
Z2FyZHMsCktyaXNobmEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
