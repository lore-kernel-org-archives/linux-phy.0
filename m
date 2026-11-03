Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBB1606A332
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 05:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uNknrmj1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Q9GBgtRQ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jOOKoLOJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0Rff4k8kS8tTS6UnJgBrYSpchFXFq+2c7exoHRRRe8c=; b=uNknrmj1QQqhFN97CAZgqBrlKr
	yAEO3Ok2Ev2SXgbrv8Bg4f75CBJqywW+GzpveQV1znqzc0vA797C8cLoZm3SpzgIJpd6V2ogQ9d9m
	8IW7jYSJcaKBhPJM4u7ApOOirM4oMgEsMBHUDtnD0IrmgqpBO145tclJgjdDAntfyNOMOkikeSmb9
	kqHrP9UrAjV79/CJhvhg4G9uopss1f3BxwptI4/nGdJRCShXwvMd0RSnju18HErsCEipzLoQ3Ra/x
	uFN3jZ/xsQcNprFxRRueAg6I9cutu25ucP3+QDWYz4Mi/nM03wzXpgf8V8UM+N7PsR6wO1qv+CBOr
	NtKHuVOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO75Q-000000018Pl-2O9D;
	Tue, 03 Nov 2026 05:29:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO75N-000000018PQ-3dhE
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 05:29:31 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A31e5qi1397179
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 05:29:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nauR3Qpw4qDzU3M0MToUxdKJrlvc0tM2JwXipe2UNKk=; b=Q9GBgtRQxImJvKOY
	7Ikqd4ulqysMzq68hoqVh11FXvbQDDuyCDnJhAZ2zfD2nuYN2KY6K6pliIrhh4PX
	DKOArf8UsxsbNLt/6tpSl5R2q8T5oyx92eRidHrtxNrtf8ahgd867C2exppBMnDH
	iYfXrgI2xU4FXvnEa1tTw8UpF0wfmt9FprF7ggY+PwDBJULp+1gMnKD4V1a5qzSo
	oFk4JMSdS+xNthtrUmcfhG92Q/UW/EJhW1WNHUBflv07tTd19aGwbqvHWDIC0P+2
	bctHeDnl0BhYgvGQJjmF0zIHz+oaHGk9PZ9AK8FU6F1hQPfmS370Eick7uy6LN7a
	RZcB0w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq4v5gyvk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 05:29:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2e8ad8c5f80so62390595ad.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 21:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793683769; x=1794288569; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nauR3Qpw4qDzU3M0MToUxdKJrlvc0tM2JwXipe2UNKk=;
        b=jOOKoLOJDMFuWL1fSzR7rTO7MaJprv7fm4ULJ71LHNVCOyhjIphNfCKTRiu6uNaWGE
         lv3mAz4ev+C1Kjv22TppuE5pxwqVv/ZMHBCz1DQQ1xQ4OhEK4BSSi6eGNLpe67KWwJrM
         zvnByrFkKBbbmTzKDxp4oQk2e+N+zt0+Y6t5eil0Y2RjIdo9kMrZ8JenfLLiwGXA/T0/
         1y17JRC862jH6N5kakcz8bAHB85vfnZN22RVdM3kAq8MJV/SNtRybQJMPvQLQbYJ+CSR
         wSC3XvWcomai02qQz5YAhsDCata8L0KOOTsbvrmqdhEqzt03vyay3/iah5hNdtoUKjqZ
         YLaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793683769; x=1794288569;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nauR3Qpw4qDzU3M0MToUxdKJrlvc0tM2JwXipe2UNKk=;
        b=ikdVDEYcYB9rNCQP+By6FFfEFzbJN2fysyCxnsRof4B2QbEaK7mfSVH/fX3jQWw1+2
         PbTxZZXdjE2Mj3urZMD6OMRoV8w7hVvLWhJ8p/Il+Sk7qYFmc+nTrDJKKfMN7wkLgrKU
         hH/HLttFtvVm49pBbEFWwNnUmE1/tI99t28btgTAlK3LncdxHPh0GR8moFKacqiSIfGp
         TDn+ExktTIkCHh+0ubOPacoOLP/B4a3SSa6QVL5tzjHUhT6UJWN+L0H5ZV6mKY16jUVF
         yWedJH4HIVbK6V85X9OmEJTqooperQWRiWfv61HXBmvhY3ngsDDPJJHgLtkktjxJqfJ0
         irPg==
X-Forwarded-Encrypted: i=1; AKwUvBxn/u8FD0zkWw+fcmZ4hkdKFtqxWDrM7moxQluBO0DIrx9K1UUVdN08TlTKOeniKpGLqzfn2Ma2OvI=@lists.infradead.org
X-Gm-Message-State: APuU4Z/eI7jANf2JNZoSOV6RnNoW9X0OIOZWp+MqvOqksxnaILrjpaxt
	0zHyoRqf5ZU4Emw4Yt7NTQQ6zY9QQxnGa+/uW23jCHlbgrMjAdgFcxV4Tf/jGiY3RUKwpWn38k0
	29v02j8X7YUAk242aTpyXi35j6ImxxLpA/5zIHWgp9YXi4oV0wxnwG529+K2W3uxMlR26
X-Gm-Gg: AYBFou1WL0AUXYVJ0pe+QzMD+jtZQqdyDm/FrL73SXfjnPMO2AMObqT5Cxic+DYy45v
	faFWcqsdNxTTucXxRsgWlWhBdHOWjgthqiYMXzlC7ZcgKf8hPRoNB2Jtmhi6iu3J72JBCtiqz3l
	wJ8dvxcUJnpB7wDBjiVMCgkveAeYt+oden8hqhqmHsnkR/PvkupJKTx7v/DdkjDWsfhcNpmszaS
	jspGG6wAls0Mx16Yp4cNmB0Kj/J5j6Z9DCpVPrpjU2IuKM/6eZh5K36kdzhycexMtUJ83opndXH
	JjBkjLsEQ9ToyG2rP03exJm7wDmpnV0S1JlFbVnOtjSWQAyUaFit8hqYaZPLNT/PIwCGbJgc6Z9
	Y1NE3h31D+RRViTwQM/bELSa/5xhr1PNX8ixFM/Td3EivABT1FMUrG/Ag2Z1L+aOaPLmGez9tAj
	KNOZCmn1SacnAGzJ25aC3tJ2vAqY44Bv/N
X-Received: by 2002:a17:902:f68f:b0:2e9:7dda:bfd1 with SMTP id d9443c01a7336-2eb364c45dbmr110155135ad.30.1793683768719;
        Mon, 02 Nov 2026 21:29:28 -0800 (PST)
X-Received: by 2002:a17:902:f68f:b0:2e9:7dda:bfd1 with SMTP id d9443c01a7336-2eb364c45dbmr110154855ad.30.1793683768154;
        Mon, 02 Nov 2026 21:29:28 -0800 (PST)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb3922f56bsm35371005ad.16.2026.11.02.21.29.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 21:29:27 -0800 (PST)
Message-ID: <d92a8aaa-5cef-4416-b1c9-46ecfc6b2745@oss.qualcomm.com>
Date: Tue, 3 Nov 2026 13:29:21 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] media: qcom: camss: Add support for Hawi
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
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
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <fFfGGWaoXA-LdO6s8Xh_kQWQfncXe9YNdpcj2yNkphWHAR_V69LdLOcuhXPsbg8dEUSN4j4yygq4wPre5cz79w==@protonmail.internalid>
 <20261030-hawi-maili-camss-v3-5-9742bca8cef2@oss.qualcomm.com>
 <5817be6b-7180-407b-acb5-8c5fdef4edfb@kernel.org>
 <73b1f591-69cf-471b-9763-a0b719c74501@oss.qualcomm.com>
 <fac8cd6d-c3f7-4ed3-b0d4-7cb8a7a6f451@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <fac8cd6d-c3f7-4ed3-b0d4-7cb8a7a6f451@linaro.org>
X-Proofpoint-ORIG-GUID: WkxBVKw5qewYm4UrxgRuZLXDbp34iixm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAyMSBTYWx0ZWRfX1jZk4v0mI30a
 SXkzqEl3MYUXlQAWOJier3bSAyiQIhzNZY/xsxvDUPFeScvqXFsDO6YobDBNHFlOrecGZLJRjyr
 k9mSB9sZH+cMGhaQ1ReyEdm8/zySwUIzV8PlN6QQWHHwyzVo6iuYqPR1WZ/Nun6auAf2pGXnKo2
 7juwW5+QT+unYvtC+IavYvE3B6cEHiFEzOjks37iYkwQNGnjdClWoVIrQR5yjWMIQNQ2BSTKWK4
 GWGPVkmBKFe6KLGx83ScHBhm0SGot9yAtoOlUXG7/v6bffbOLYgcF1lZFr8TumU2kEKEuJO7GKM
 fLOJduY0z1iYXqbv8+2GiwNCl84GUSlo0LcHeEsEdhVoZQfmpCgqe/E4CHLW4EQ0wbB1880uvuI
 ZBhgZv5KuNlr4nWBarTopCOW7Zf08Z8pfMkQvLhPMRcZAtzHWmXsGTvJAJmGyqwlnACOWBofUmr
 K0XdwLZjCsKXTyr4NaA==
X-Proofpoint-GUID: WkxBVKw5qewYm4UrxgRuZLXDbp34iixm
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAyMSBTYWx0ZWRfXy/km3PSnwR7C
 ap1iFJg8HS7zDYxs9CAKfxN+8fh72kPVomMnspnz+oEefoxxdMncEz8U0Uaf/ArT4zDHUIZPBSX
 F1hDrMg/84FX5/FDVsQAMzyTUAzzbQ8=
X-Authority-Analysis: v=2.4 cv=NeZzRGD4 c=1 sm=1 tr=0 ts=6ae97139 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=e403w2VLNo3D9SQJzk0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_212929_932404_72B15A3F 
X-CRM114-Status: GOOD (  21.24  )
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

T24gMTEvMi8yMDI2IDg6NTggUE0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4gT24gMzAvMTAv
MjAyNiAxNToyNSwgSGFuZ3hpYW5nIE1hIHdyb3RlOgo+Pj4gT24gMzAvMTAvMjAyNiAxMjo0Mywg
TmloYWwgS3VtYXIgR3VwdGEgd3JvdGU6Cj4+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2Ftc3Nf
c3ViZGV2X3Jlc291cmNlcyBjc2lkX3Jlc19oYXdpW10gPSB7Cj4+Pj4gK8KgwqDCoCAvKiBDU0lE
MCAqLwo+Pj4+ICvCoMKgwqAgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAuY2xvY2sgPSB7ICJjc2lk
IiwgImNzaWRfY3NpcGh5X3J4IiB9LAo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAuY2xvY2tfcmF0ZSA9
IHsgeyA0ODAwMDAwMDAgfSwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHsg
NDgwMDAwMDAwIH0gfSwKPj4+PiArwqDCoMKgwqDCoMKgwqAgLnJlZyA9IHsgImNzaWQwIiB9LAo+
Pj4+ICvCoMKgwqDCoMKgwqDCoCAuaW50ZXJydXB0ID0geyAiY3NpZDAiIH0sCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIC5jc2lkID0gewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5wYXJlbnRf
ZGV2X29wcyA9ICZ2ZmVfcGFyZW50X2Rldl9vcHMsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLmh3X29wcyA9ICZjc2lkX29wc18xMTkwLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC5mb3JtYXRzID0gJmNzaWRfZm9ybWF0c19nZW4yCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+
Cj4+PiBUaGlzIGxvb2tzIHN0cmFuZ2UsIHdoeSBpcyB0aGVyZSBvbmx5IG9uZSBjbG9jayByYXRl
ID8KPj4+Cj4+PiAtLS0KPj4+IGJvZAo+PiBIaSBCcnlhbiwgdGhlIGN1cnJlbnQgQ0FNU1MgQ1NJ
RCBjb2RlIGFsd2F5cyBzZWxlY3RzIHRoZSBmaXJzdCAKPj4gZnJlcXVlbmN5IGxpc3RlZCBmb3Ig
ZWFjaCBjbG9jayBpbiB0aGUgQ0FNU1MgcmVzb3VyY2UgdGFibGUuCj4+Cj4+IEluIGNhbXNzLWNz
aWQuYzoKPj4KPj4gWy4uLl0KPj4gfSBlbHNlIGlmIChjbG9jay0+bmZyZXFzKSB7Cj4+IMKgwqDC
oMKgwqDCoMKgwqAgY2xrX3NldF9yYXRlKGNsb2NrLT5jbGssIGNsb2NrLT5mcmVxWzBdKTsKPj4g
fQo+PiBbLi4uXQo+Pgo+PiBGb3IgdGhlIENTSUQgYW5kIENTSURfQ1NJUEhZX1JYIGNsb2Nrcywg
dGhlIGhhcmR3YXJlIHN1cHBvcnRzIHRocmVlIAo+PiBjbG9jayByYXRlczogMjAwIE1IeiwgMzAw
IE1IeiwgYW5kIDQ4MCBNSHouIElmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCAKPj4gMjAwTUh6IGFu
ZCAzMDAgTUh6IGlzIG5vdCBzdWZmaWNpZW50IGZvciB0aGUgc2Vuc29yJ3Mgb3V0cHV0IHBpeGVs
IAo+PiByYXRlLCBzbyB3ZSBuZWVkIHRvIHVzZSB0aGUgaGlnaGVzdCByYXRlLCA0ODAgTUh6LCB0
byBtZWV0IHRoZSAKPj4gYmFuZHdpZHRoIHJlcXVpcmVtZW50LiBUaGFua3MgYSBsb3QuCj4+Cj4+
IC0tLQo+PiBCZXN0IFJlZ2FyZHMsCj4+IEhhbmd4aWFuZwo+IAo+IFdlIGhhdmUgYSBzZXJpZXMg
ZnJvbSBBbnRhbnMgdG8gYWRkcmVzcyB0aGlzIHRob3VnaC4KPiAKPiBXZSBzaG91bGQgbGlzdCB0
aGUgY2xvY2tzIHRoZSBTb0Mgc3VwcG9ydHMgbm90IGNvbnN0cmFpbiB0aGF0IGxpc3QgZm9yIAo+
IG9uZSBzcGVjaWZpYyBzZW5zb3Igb24gYSB0ZXN0LWNhc2UuCj4gCj4gLS0tCj4gYm9kCgpHb29k
IHRvIGtub3cgdGhhdCBBbnRhbnMgaGFzIGEgc2VyaWVzIGFkZHJlc3NpbmcgdGhpcy4gSSBhZ3Jl
ZSB0aGF0IHdlIApzaG91bGQgbGlzdCBhbGwgdGhlIGNsb2NrIHJhdGVzIHN1cHBvcnRlZCBieSB0
aGUgU29DIHJhdGhlciB0aGFuIApjb25zdHJhaW5pbmcgdGhlbSBmb3IgYSBzcGVjaWZpYyBzZW5z
b3IuCgpPbmUgYWRkaXRpb25hbCBjb25jZXJuOiBpZiB0aGUgY2xvY2sgc2VsZWN0aW9uIGxvZ2lj
IHN0aWxsIGFsd2F5cyBwaWNrcyAKZnJlcVswXSwgbGlzdGluZyBhIGxvd2VyIHJhdGUgZmlyc3Qg
Y291bGQgbGVhdmUgQ0FNU1MgdW5hYmxlIHRvIHdvcmsgCnByb3Blcmx5IHdpdGggc2Vuc29ycyB0
aGF0IG5lZWQgaGlnaGVyIGJhbmR3aWR0aC4KCkNvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgdGhlIGxp
bmsgdG8gdGhlIHNlcmllcz8gSSdsbCByZWJhc2UgdGhlIG5leHQgCnJldmlzaW9uIG9uIHRvcCBv
ZiBpdC4KCi0tLQpCZXN0IFJlZ2FyZHMsCkhhbmd4aWFuZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
