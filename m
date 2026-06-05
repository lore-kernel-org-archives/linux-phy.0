Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64946CD6E5D
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 09:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0S2oow/DS53UiTahVPkxhgHxrnzD4tGPoOQhXAPda8=; b=yzdVZ73/8abQhb
	wfP5P8a9iNCQz5uDaOL9y8PfZtp7Qbs5dfc6GqA0C6yI9xJiEn6UVhwdF06gxBfH8tAL68dxwT/Qw
	OWA3JYG71XAtD9Fbyvh+XHiBlaIHildqugc4Gy7zh0ladxhbYwP5fjLR3QKuQiEjOhrgJBNdzSyID
	Eq8iNUR3kksYhzykmYMl/gZTLkYnvNrmlQdy7sU44IezQ/OUn3+SDNJQRnJ8VhdZjjOZQC/pUxilr
	2ZXHg0l7nj7xKXfAeqW9StAdNj+A8mrwhLBiSAQC/1mh91RogxgwotbRIZMugjSKVfWloN8xDWhjH
	XgKCjYFnLmiyC200hZNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVQu5-00000000P9A-49Zd;
	Fri, 05 Jun 2026 09:31:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVQu3-00000000P8Q-0hSG
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 09:31:48 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6555q8kR2427812
	for <linux-phy@lists.infradead.org>; Fri, 5 Jun 2026 09:31:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WS/k+wgA9f1OsJg8r3jynZqlYrCdT0iV++pL/dGGg9s=; b=DLUofgIvQAQhGNfk
	/bKNuE2nUQitTF84ttk/YBylz57m1wTszZkdi1GBu2287W6yPg492ZOeNoQhbULm
	2AW9yCLCHWoIsnI7MhMZfFa3wT8SzhtPQ0S3yiWcHVF+TGcG/nRSPRlQxRcbl8dS
	9Z333gDYiRePLiSLI0zXtMiSKZQNN3SwqOSeMwuZYgkLRxptDs8g19Snp06+mnRV
	I0fOQ43Cnb4GDveSrgaxxdfJjftotQhQG5R7PmYWqQCZ2aGxN4b/rA43z8zJy2Zg
	Efw3YeeVdd5tSkdrpItZWi8o3p4tAQFfLbw0K9X6XJVvxy20tlXdYH257Kt+rMhn
	3PWF4g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ekrphgu8e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Jun 2026 09:31:45 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2c0c3315d31so20867045ad.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Jun 2026 02:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780651905; x=1781256705; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WS/k+wgA9f1OsJg8r3jynZqlYrCdT0iV++pL/dGGg9s=;
        b=aJd+8deaaNqirZusZ1p1lBUbII/VshELKDZ4T8xzwZdcaHgEEBWYYyzOpgm4V4Fg7j
         DlnZDA0Hz0ADtElHJGJGtXxxooYRJiIstk12JVvBVAHkuTxTRKNv962WhUuHtoJKNrci
         O6dDNeftt7pKX660QPqNhc69Jam0P2o9L+C+pbjf4XQe6tadFv0M9qhpAg+7mEosVFRJ
         5c2Iob/bjczzR3+hXtlzCkg7e0vEqOBb0KAhcqXHLqBb+MNJ41k5jiMGC8XdO2zBBa+m
         o59se+eRNelgLg1bKQ8EGBmZBKnYLuMBQau72yAUU7yUtxWmfZtowaHTwTV/4uq29kSA
         BEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780651905; x=1781256705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WS/k+wgA9f1OsJg8r3jynZqlYrCdT0iV++pL/dGGg9s=;
        b=BvetbQwEDSDCQvAhspEsedff1GfN6V02xUAs3J3S0FniAiNCOh/gXT8iw8luy1AEk2
         zZLon2LOhOistPUzrkyI/f8URl+YKYnFaHAUdNE3xECFxlyBe781aGwT2QdrQeOarp5C
         3+wtpnnMxQYjFQbjxlb1A2m3LA2XwKYJd5k7ubIrI8BPW5Tk8c3ZYOoVHzm8VXaQsDo1
         1Qthzx+anFqg8QFI/7b3cXw2AxpphdvRt26vuP9pTZM35IYdbpJEN4RAGCEX3iNcfXZ0
         wa8OASlPb42MitLeQl8J8s5+CwLBp9fsak2/50/u3p8JdrHxNq7IXdQndhsiE71D1rTJ
         e33Q==
X-Forwarded-Encrypted: i=1; AFNElJ+5f0kjGI7S+BxTuSQnP9mYMxDarnoDdJM548lvlfmYrE8XLUWtGE+0TMdXzdp0U5gvXT2XEfkJe7E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3E3xXkNubT7CgwpWcBkRrWlGI9mQVISN5sZtUDl9lJlNRLZf3
	5y+VHTfetaM4R77skKUUu35Aryz2BQsvHHDmz9UieovB94E8wyGub6g79qhYbazF24MC0LmYPfc
	tyKIr48RHdcnttuJNzFp9fPkBGv4vdyf0Ekf7liXbgRpt57NtH/fRyJdOnN2xREJ8sD9G
X-Gm-Gg: Acq92OEdhOTlOK1D4A9Py4wVK4KQ/wHyfweeQZtQlBLBd2jbUBd28YRwYtwdp5cJz92
	EFejCpmh985dfmR4PGVwtnnBjFhJCrcCKoyzpozj1QcewksU8INm//cf10Nu/D/61xWemcZn9DW
	u7pQhYsKlyer2GZkvokUuzKH4SRDIhrUAR3lmKRzevafAqprs1g3kNySxI8+GWKT6RWSaBxZOyk
	k5X/yORFvT1XaiyXbbHo2CNB7TPKODtnYuVnt84QQGC8MSD9iKqe2c7IWZUmUWO/WUeIzDsBCxJ
	ulAPjlu9W2mUCFbavMvNeldhMvUcrGDVjcHzChFacss5Ey/S1jIl1jZPRU0T6d1mchunscOxK+G
	UAvYo20dLqwGN0FU+82U9s3OmQflR5teSUIqajG/0SGcm7as2y4g3t7uITlSZZA==
X-Received: by 2002:a17:902:ea09:b0:2bc:8f9a:3642 with SMTP id d9443c01a7336-2c1e7e6eee0mr28231245ad.16.1780651904874;
        Fri, 05 Jun 2026 02:31:44 -0700 (PDT)
X-Received: by 2002:a17:902:ea09:b0:2bc:8f9a:3642 with SMTP id d9443c01a7336-2c1e7e6eee0mr28230645ad.16.1780651904247;
        Fri, 05 Jun 2026 02:31:44 -0700 (PDT)
Received: from [10.206.103.106] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164fa3a5fsm91534805ad.36.2026.06.05.02.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 02:31:43 -0700 (PDT)
Message-ID: <59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com>
Date: Fri, 5 Jun 2026 15:01:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
 <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
 <htxqjgwjczsghunsbvo44lwkadzeg2kp6wfcksf3hkmcubvs2d@cw5r67uxskvu>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <htxqjgwjczsghunsbvo44lwkadzeg2kp6wfcksf3hkmcubvs2d@cw5r67uxskvu>
X-Proofpoint-ORIG-GUID: CLRSQx7gzQPRZZEnccFFGySmv2BC5IvV
X-Proofpoint-GUID: CLRSQx7gzQPRZZEnccFFGySmv2BC5IvV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA1MDA5MiBTYWx0ZWRfXx1gKBi/+ltFX
 9pZ08VX9AIhwYZ9Q3VZ12FLqdyXRlD2WSl2gzzveyQ2uhwqZVKBRKFMpp7VgZ+DFuQ1kEuY33LM
 O4/80U1hFj3qLrCANjZ0BcpW/EPdM9tJi6cHq8SDd/A6YCf1lgqgwbmQC4q+3Jg67fm9mKcEHMO
 zxOIYfeoiN+++IQGzWfnZhj0uZBoEqjqjjWPdtk8BAoFYP9ADGtzwGAhUn7kqmPScaG4bmhSgik
 4dQQnyVBY/MQRd2F7UKRO16w3JgZ5aA116xvHwLLgrBoeOso70H2EbZHATKZ3jVMn/nivp6xfn1
 Bwvp4cmlK10mYO3buEkrDGJNv+yj/Qn+Cz3tqvkk49wUmc+AQIxTTIABWJA9huOSmhYHe6x5a0j
 xRta8HWfFxyeLZx3Lwntb/jwlb/CxBDml54FVf4Kfu14U0API1dtxmx1ihNGT6XuJIL3gjl5mIx
 MyXmBOj1C3M5V1RGFoA==
X-Authority-Analysis: v=2.4 cv=T9a8ifKQ c=1 sm=1 tr=0 ts=6a229781 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=f6Fr6PdTwcyk7UrtzrMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-05_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1011 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606050092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_023147_214850_D72D3ADD 
X-CRM114-Status: GOOD (  12.75  )
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

CgpPbiAwNC0wNi0yMDI2IDAzOjQ0LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
SnVuIDAzLCAyMDI2IGF0IDAyOjM3OjQ4UE0gLTA3MDAsIFZpamF5IEt1bWFyIFR1bWF0aSB3cm90
ZToKPj4KPj4KPj4gT24gNi8zLzIwMjYgNTo1NyBBTSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToK
Pj4+IE9uIDAzLzA2LzIwMjYgMTM6NDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+IEFy
ZSB5b3Ugc3VyZSBhYm91dCB0aGF0ID8KPj4+PiBZZXMuCj4+Pj4KPj4+Pj4gaXBjYXQgSSB0aG91
Z2h0IGRlc2lnbmF0ZWQgbGFuZSA3IHNwZWNpZmljYWxseSBhcyBjbGstbGFuZSBpLmUuIG5hbWVk
IGl0Cj4+Pj4+IENMS19MTiBvZiBzb21lIGRlc2NyaXB0aW9uLgo+Pj4+IFNwbGl0IGNvbmZpZ3Vy
YXRpb25zIGV4cGxpY2l0bHkgdXNlIG90aGVyIGxhbmVzIGZvciBjbG9ja3MuIEUuZy4gY2hlY2sK
Pj4+PiB0aGUgUkI1IE5hdmlnYXRpb24gc2NoZW1hdGljcywgQ0FNMEIgY29ubmVjdG9yLgo+Pj4K
Pj4+IENhbiB5b3UgcGxlYXNlIGNoZWNrOgo+Pj4KPj4+IENTSV8zUEhBU0VfQ09NTU9OLkNTSV9D
T01NT05fQ1RSTDUKPj4+Cj4+PiAwIExOMF9QV1JETl9CIExhbmUgMAo+Pj4gLi4uCj4+PiA3IExO
Q0tfUFdSRE5fQiBDbG9jayBMYW5lCj4+Pgo+Pj4gLi4uIGp1c3QgYSBiYWRseSBuYW1lIGZpZWxk
Cj4+Pgo+Pj4gQ1NJXzJQSEFTRV9DVFJMMTAKPj4+Cj4+PiBCaXRbMl0gPSBJU19DTEtMQU5FCj4+
Pgo+Pj4gUmlnaHQgc28gQ1NJXzJQSEFTRV9DVFJMMTAgY29udHJvbHMgbGFuZSBtb2RlLCBpbmRl
ZWQuIFRoYW5rcyBmb3IgY2hlY2tpbmcuCj4+IEkgY2FuIGNoZWNrIHRoaXMgd2l0aCB0aGUgSFcg
dGVhbS4gQWx0aG91Z2ggdGhlIFNXSSBoYXMgdGhpcyBrbm9iLCB0aGVyZSBtYXkKPj4gYmUgc29t
ZSBsaW1pdGF0aW9ucyB0byB1c2UgYW55IGxhbmUgYXMgdGhlIGNsayBsYW5lLiBBRkFJSywgb25s
eSB0d28KPj4gc3BlY2lmaWMgbGFuZXMgYXJlIGNsayBjYXBhYmxlIGluIERQSFkgbW9kZS4+Cj4g
Cj4gSGF2aW5nIGNsb2NrLW5hbWVzIHByb3BlcnR5IGRvZXNuJ3QgbWVhbiB0aGF0IGFsbCB2YWx1
ZXMgYXJlIHZhbGlkLgo+IApDU0lfQ09NTU9OX0NUUkw1IGlzIGEgcGh5c2ljYWwgbGFuZSBwb3dl
ci11cCBiaXRtYXA6Ci0gQml0cyBbMCwyLDQsNl0g4oaSIEQtUEhZIGRhdGEgbGFuZXMoTE4wLCBM
TjIsIExONCwgTE42KQotIEJpdHMgWzEsMyw1XSDihpIgQy1QSFkgdHJpbyBsYW5lcyhMTjEsIExO
MywgTE41KQotIEJpdCBbN10g4oaSIEQtUEhZIGNsb2NrIGxhbmUoTE5DSykgZGVkaWNhdGVkIGNs
b2NrIGVuYWJsZQoKSW4gY29tYm8gbW9kZSwgb25seSBMTjYgY2FuIGJlIGNvbmZpZ3VyYWJsZSBh
cyBhIGNsb2NrIGxhbmUuCgpUaGUgbGFuZS1lbmFibGUgY29tcHV0YXRpb24gaW4gcGh5X3Fjb21f
bWlwaV9jc2kyX2xhbmVzX2VuYWJsZSgpIHVzZXMKQklUKGRhdGFbaV0ucG9zKSBkaXJlY3RseSwg
YXNzdW1pbmcgcGh5c2ljYWwgYml0IHBvc2l0aW9ucyA8MCAyIDQgNj4sCmJ1dCB0aGUgRFQgWzFd
IHVzZXMgY29udmVudGlvbmFsIGluZGljZXMgPDAgMSAyIDM+LCBwcm9kdWNpbmcgMHg4RgppbnN0
ZWFkIG9mIHRoZSBjb3JyZWN0IDB4RDUuCgpUaGlzIGdvZXMgdW5ub3RpY2VkIGJlY2F1c2UgdGhl
IHdyb25nIHZhbHVlIGlzIGltbWVkaWF0ZWx5IG92ZXJ3cml0dGVuIGJ5IHRoZSAKaGFyZGNvZGVk
IDB4RDUgaW4gbGFuZV9yZWdzX3gxZTgwMTAwLCBtYWtpbmcgdGhlIGR5bmFtaWMgY29tcHV0YXRp
b24gZWZmZWN0aXZlbHkgZGVhZC4KCkNvdWxkIHlvdSBwbGVhc2UgZml4IHRoZSBkcml2ZXIgdG8g
bWFwIGxvZ2ljYWwgbGFuZSBpbmRpY2VzLCBjb25zaXN0ZW50IHdpdGggdGhlIGdlbjIgY2Ftc3Mg
Y29udmVudGlvbi4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAzMjYteDFl
LWNhbXNzLWNzaTItcGh5LWR0c2ktdjMtNS0xZDVhOTMwNjExNmFAbGluYXJvLm9yZwoKUmVnYXJk
cywKTmloYWwKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
