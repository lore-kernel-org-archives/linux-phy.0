Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054CA606A336
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=alHMAB9a;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LtUJw8K/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WInhZWHm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ue1a16TRcAAZZ7gy1tXS9CRlXghA+grwWLm508Kqww8=; b=alHMAB9aQBOr4NzkOa1OmtfRxM
	PzRUtjcn9Tnv57wE3cYQBVnGr3bntzU7ANvJyJVX0QE4jaUWPiJCTglWARGmEdmaE4XfdAuMGukZc
	UTzLlpdgERjH7Kj43ahwK4dtYnTsQmBZ2J1l8H4C/SL9nMFsBcf2JtxkRi51TSlBzJG00gZx+zfY/
	pJASH+BvY8Zi89NVr2ohE4ccU0Q+Vb/mITfsKZ16vSlG2XIJM1Ak+qZC6UuxST9SZEZamAqfDA72w
	ZAFp9Yom8hJ1Xlz4JcyZvFO+S6qWo2wRvfmE+kNrK5ucDFzbnRXreWG6aQkNUkVV/3MUp01Z57WQT
	fl3RI86g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMoUK-0000000C0Vn-2Rge;
	Fri, 30 Oct 2026 15:25:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMoUI-0000000C0VP-2J29
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 15:25:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UERFjO378152
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 15:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HAanuw/65QLamv5I/BsAigacYne4PYbrmQQm09dQCp0=; b=LtUJw8K/jVPibXL7
	Nm6X6MfGfw+jsqw0QHvh2SPqp7FITBDyU6dhveHHRWv4sDrLCiMXu7elwTdgxcv6
	Q3v8AS060Pha/MLTvN/d27jg8OzlGalrMTvDiPa6nz7k1ay8ai2sTBgzM4gQT5Ln
	P58OwN8NvpRQjWM4defAPMQ4BkxF/aWafIxZTjLzBXw21cqPCfsl4dNYSyun1uCg
	FcsITEjBEJGGtVM4bH4yu56IqmfgJB7U4LNJ2aO5u52hh6bPk1YqAP6/UTf06yWr
	aZWscMPIY5o0ShNuCabk/YQkhXFls5MXy89QqX4jA8/yoUx3lfFZFSjl9nYoT27x
	xp6Smw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme753qdq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 15:25:49 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-89f84753b43so640424b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 08:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793373949; x=1793978749; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HAanuw/65QLamv5I/BsAigacYne4PYbrmQQm09dQCp0=;
        b=WInhZWHmHF3mO+E+saTGlrhnW0n1HT+Su1F2W7SiHP8sdcV80CTdGXLE993Pe/adfw
         oruQsoGGp4kZ/pARNGlykCYkhRsVyjJneeVhEZ+tqzgdLyEg8Hje3i60iZw6OPctv64B
         WKxkYnCzF7BBqMik3Zd9EjxkhZ5hShHKEzBu70TNwQ+N/I6mqrJ/Dh/AQj4dJ73VHF+P
         JqEeH5NdB/Cv/k1u34Pv/3SQMVhlXxpeljgHMoomWnqmixwK2MVuiEepfD94sNJYjJj/
         QQd9RDRLfXcW5ZC51l8OqhMIrZSVS0coDariAB4d2PBCP174GZ6vZp17ovKNQtiAtz20
         ct/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793373949; x=1793978749;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HAanuw/65QLamv5I/BsAigacYne4PYbrmQQm09dQCp0=;
        b=Ut2a9mvzB+qLZuF5fwmQf1i/Vu5L9dIUmiuhBIOtpFjjXBFxUe9LcEcPdZrrMQH/NU
         V7LOQPkim3ksyKlBjh5nxnRMaDExZKvAPBynqA9MJ7S+WJY9kgDPyVHSSm8MLc+ersZS
         e/KwLlfdlUKo25WtjfSb7DWCTggL/7qfPuJZGiaBAwoNtmWSC3Li18XTsFRzvzW6MXrJ
         ycx/OuuhKqvF1P3rC0t/5N6wLwC7JBsfjVKzBQadanS0IZVLF8UD+ag+G5HPm14UwiUj
         FevUP9RuFxFQdz+puwwq3S6KysT94p8kUjMvjAcZQ5HnacKPoYpAnZvGUwnyB1nBhG9L
         oYvQ==
X-Forwarded-Encrypted: i=1; AKwUvBzvIFXqYju8bpLY9nYS42+Fnoy//xt+YM0luSHk98PizSk2Re/ai/NSI+vfkB61QRv7jn8nxvFfj1s=@lists.infradead.org
X-Gm-Message-State: AFq9FYI6MnwPbEYvzWRQxabXtE8TtGEYbwJHFhR6OhUUBLaBNTJwPXNX
	zTba6o/rPv2ovG3cPCVlsNeBk+Kf8ZzyMhclyE1/Bnfk+0LKPcTk+lbs+opyPMqmdKGTeD5Bqvc
	kOqS0l17D4HD9hK3HmPzbytZwCy92de3DvXc+MZYszTNQ2JVo0QYRZr0Q4KZ+UEDkDcT4
X-Gm-Gg: AYBFou1B0gLreuGag0A+RxAQVEaY5BrZC47u8SCb1bZypKN31mF2N9avKdsDPC2WFvX
	E2E/9WuxUEafrky27Ldm7hZpgWuFYaZtFHjBxckqOvnuV02HDbjc3t9pEwdCwadn8h5bi7/GFlk
	Sw9P6EzesjOp5L5jJVbzYHfyOQw3vXYY8bwMdRRDdMU0j+T2PaqsnAu/hbyCoeBCIrcAbxAbdFY
	aI12x1kD+LP/v6gxSPK0/fplcCsl5Kz03q9k0O6q9ylrC7FENc4lNohgfklrqrrOw+DcE8ImMvf
	cYXTarBsXdxJEpEG2CkdgW3n8ihiAACoPNqDUmuWsSY1GzcYWiFyFF0BG1kr/6g0qS9XUDmoh1i
	ytech9gkGDKsSvv1Y3s6mC6sqC49Z2AJHWTCJDxXbbTf20ymhjnD/JfVpPJZRma38cSFPLPf/td
	9rKvK7nqKKvtV89xJabK7rWVPvaFglIAK9T/UQ
X-Received: by 2002:a05:6a00:12ce:b0:880:5fe5:a818 with SMTP id d2e1a72fcca58-8a9bef522b2mr2301168b3a.59.1793373948954;
        Fri, 30 Oct 2026 08:25:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:12ce:b0:880:5fe5:a818 with SMTP id d2e1a72fcca58-8a9bef522b2mr2301134b3a.59.1793373948472;
        Fri, 30 Oct 2026 08:25:48 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.160.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8aada2dec47sm141926b3a.36.2026.10.30.08.25.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 08:25:47 -0700 (PDT)
Message-ID: <73b1f591-69cf-471b-9763-a0b719c74501@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 23:25:41 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] media: qcom: camss: Add support for Hawi
To: Bryan O'Donoghue <bod@kernel.org>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <fFfGGWaoXA-LdO6s8Xh_kQWQfncXe9YNdpcj2yNkphWHAR_V69LdLOcuhXPsbg8dEUSN4j4yygq4wPre5cz79w==@protonmail.internalid>
 <20261030-hawi-maili-camss-v3-5-9742bca8cef2@oss.qualcomm.com>
 <5817be6b-7180-407b-acb5-8c5fdef4edfb@kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <5817be6b-7180-407b-acb5-8c5fdef4edfb@kernel.org>
X-Proofpoint-GUID: ZV3JdDlhWIjmiVHC-ofe89MxPMw1IJNA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA2MSBTYWx0ZWRfX+ED4WZBblYd1
 6dMyN5I994GtUkDhJzlWWok2MQlPRlNlFF/0wUrnMahsLhYSOPrGweZ4eFDrLPrElbCI+QRsKWp
 pJMVA0Aq1Ujxgc5R18aLPAqsfK3f4SRe6qFgk5nX0XN7F6gJGU7BgbDOKMPFDY+vh/jRjx/jpZz
 8zKldX7WnQNlgte0Cg6lD1A88KyXg5aa0U822T4TLLBd5yfm+KoPIL+x0PI8mPqzCtWSxEltSyu
 /rU2LZzIv+/3jIFaKBPUGKVuc2o1+gZEv2rOWdcye17V2qpJ4SZHjqAWQE9Et63FfguvlU+Cna1
 X7SNXl18OUmB7HcOT+siakWjBleSU/zHMzURP64mi+xtW7Cni74lZM2V0L9De9SOgU14iPjG9br
 3KdYxRRh5Tp8H/3NXKchFi88Wn7kgb7WQG7CVrfjpqg+KMgyvKhRK/osK2WaEG5wE937SsdeWuH
 /tNNRwAPFdcX9lZMerA==
X-Proofpoint-ORIG-GUID: ZV3JdDlhWIjmiVHC-ofe89MxPMw1IJNA
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA2MSBTYWx0ZWRfX7g2y2iMcfWjQ
 cMCtaoE+2cJUM9fSF9PYFGca0z9q1o/266x0pSBAQnepPZ/EZ03dS7yS68BxjvMWT9cInKAyAfY
 iPG7n7GjIaNMnWCreq+r8yY6whaB13s=
X-Authority-Analysis: v=2.4 cv=KdtHIgYD c=1 sm=1 tr=0 ts=6ae4b6fd cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=6d0oVIyUxUng7TJeo7N4IA==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=oDwHtdCdAfthrX0yCOUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 phishscore=0
 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610300061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_082550_594652_B7E86C68 
X-CRM114-Status: GOOD (  13.04  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMzAvMjAyNiAxMTowNCBQTSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAzMC8x
MC8yMDI2IDEyOjQzLCBOaWhhbCBLdW1hciBHdXB0YSB3cm90ZToKPj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgY2Ftc3Nfc3ViZGV2X3Jlc291cmNlcyBjc2lkX3Jlc19oYXdpW10gPSB7Cj4+ICvCoMKg
wqAgLyogQ1NJRDAgKi8KPj4gK8KgwqDCoCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAuY2xvY2sgPSB7
ICJjc2lkIiwgImNzaWRfY3NpcGh5X3J4IiB9LAo+PiArwqDCoMKgwqDCoMKgwqAgLmNsb2NrX3Jh
dGUgPSB7IHsgNDgwMDAwMDAwIH0sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
eyA0ODAwMDAwMDAgfSB9LAo+PiArwqDCoMKgwqDCoMKgwqAgLnJlZyA9IHsgImNzaWQwIiB9LAo+
PiArwqDCoMKgwqDCoMKgwqAgLmludGVycnVwdCA9IHsgImNzaWQwIiB9LAo+PiArwqDCoMKgwqDC
oMKgwqAgLmNzaWQgPSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5wYXJlbnRfZGV2X29w
cyA9ICZ2ZmVfcGFyZW50X2Rldl9vcHMsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5od19v
cHMgPSAmY3NpZF9vcHNfMTE5MCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLmZvcm1hdHMg
PSAmY3NpZF9mb3JtYXRzX2dlbjIKPj4gK8KgwqDCoMKgwqDCoMKgIH0KPiAKPiBUaGlzIGxvb2tz
IHN0cmFuZ2UsIHdoeSBpcyB0aGVyZSBvbmx5IG9uZSBjbG9jayByYXRlID8KPiAKPiAtLS0KPiBi
b2QKSGkgQnJ5YW4sIHRoZSBjdXJyZW50IENBTVNTIENTSUQgY29kZSBhbHdheXMgc2VsZWN0cyB0
aGUgZmlyc3QgZnJlcXVlbmN5IApsaXN0ZWQgZm9yIGVhY2ggY2xvY2sgaW4gdGhlIENBTVNTIHJl
c291cmNlIHRhYmxlLgoKSW4gY2Ftc3MtY3NpZC5jOgoKWy4uLl0KfSBlbHNlIGlmIChjbG9jay0+
bmZyZXFzKSB7CiAgICAgICAgIGNsa19zZXRfcmF0ZShjbG9jay0+Y2xrLCBjbG9jay0+ZnJlcVsw
XSk7Cn0KWy4uLl0KCkZvciB0aGUgQ1NJRCBhbmQgQ1NJRF9DU0lQSFlfUlggY2xvY2tzLCB0aGUg
aGFyZHdhcmUgc3VwcG9ydHMgdGhyZWUgCmNsb2NrIHJhdGVzOiAyMDAgTUh6LCAzMDAgTUh6LCBh
bmQgNDgwIE1Iei4gSWYgSSByZW1lbWJlciBjb3JyZWN0bHksIAoyMDBNSHogYW5kIDMwMCBNSHog
aXMgbm90IHN1ZmZpY2llbnQgZm9yIHRoZSBzZW5zb3IncyBvdXRwdXQgcGl4ZWwgcmF0ZSwgCnNv
IHdlIG5lZWQgdG8gdXNlIHRoZSBoaWdoZXN0IHJhdGUsIDQ4MCBNSHosIHRvIG1lZXQgdGhlIGJh
bmR3aWR0aCAKcmVxdWlyZW1lbnQuIFRoYW5rcyBhIGxvdC4KCi0tLQpCZXN0IFJlZ2FyZHMsCkhh
bmd4aWFuZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
