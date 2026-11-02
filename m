Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2E2606A336
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 09:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OW6KBdNf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=I7uTwWoL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ipPURP9T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Be5SDogMo1A2ldlq6+gu+w9LiQpmu8uE0OwEHjMDKmg=; b=OW6KBdNfUKba8lK0NbGAvjcQ2O
	hq8ZjErDKv9SobhKL7UIgiG1cTaWfSX9viPQPi2WRtuDkE1tiEWCcjxPXAeAqg3cOfZoa1fUH2x2T
	wU19LzVz7kjKPeeL94jz32cmNXkQg+khCEZLNZce/drn/9ETdjGqQR/4PsQ8tPCF7Ih3eO2TWf5ek
	2dWrjAoo8dVXQmCjJ3tV5SmRThFTGcx/djLzo1pGmHH0ZBpbrCOg4vRYS8LACAnoBDzDu3+AwQlRM
	3jSuJHh4xazqbuKCwSJYRq3IhKecBGNOViUaSTua8UcgkViZ8JzLoRQ3+iZ/DmuyGQwYZSHymDcFq
	rzS7CyXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo90-0000000FyK7-1VQD;
	Mon, 02 Nov 2026 09:15:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo8s-0000000FyGX-34K5
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 09:15:57 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29B0Uj4015000
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 09:15:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AEVL6MRXYsWUQLv2m76Ju9oh6r1L4lN+d8opj8HszTI=; b=I7uTwWoLS2R3vItJ
	6mMqX4yhEjdW4vB5H8U0w1FBr7abaQK3uOWKOeEmb6bhRQtDPH7rQd6WbYWK66H9
	kjT8Lxy6XzeaMNWHqOrjfhivIr7cppkwGiyQDTjQyDUKljgAMWcllBAy/sS6Ag7h
	e23SLG5HzDs/m4Mb91jcvS73OlCIoqQFQYN65ORXIsLne4UAH4MJQT+9zrdCbWY1
	IzlGBpkIFlgI4gNAW/id0TY0cZ5B/UnkXCt2SWRLN7TZGyjv9d3wlyeDttYTUsgN
	09GPkyjxKhaRCB70V0BmrMQ0ILZix0v44oNGKYMeF9hwPLlKnUxk+kWhd7i7sNK2
	9wLBPA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hn7b6p946-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 09:15:49 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8a5971cf7ceso3837066b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 01:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793610949; x=1794215749; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AEVL6MRXYsWUQLv2m76Ju9oh6r1L4lN+d8opj8HszTI=;
        b=ipPURP9TUUuNkqffbv3m3PTPbjguqQj7FW2Fdmus20S3Mp5ekIKnwhiUEFZ4Fw44vM
         f8+DOJ8Baf4yHDzvPtmze5eK+PmzWf2RIjrvpqsbkKfubzaop/+KmccRs/pAb0cqAKcE
         g5oziztvIGCYbhkZL1iUdEDPXyeS9ajaQs+ikWedc8UKczIta3bRbsKTnVvQAl8Wxw6X
         vxkIo+Ru5w7VeSeIPoSRxrNZINUT8EEEbBbRw/OTNAOd6sXX1L0FIgZQ/q+hF4dbAh+n
         mLivM6+c9iBO3hVqPaNiEo4sBxnq4XvZudoBryOTsWZ50XIEsh8vJFkwjsbZnmVurRJj
         Ue+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793610949; x=1794215749;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AEVL6MRXYsWUQLv2m76Ju9oh6r1L4lN+d8opj8HszTI=;
        b=aCUi6h0s1DEazkAUfWcCWOEGI0Nioysh7/nPoqzIgzHUnwhP/hyxTX1Nx2MIioqO89
         DJyPbe49jFqrfijwNkO/Hpx21VQAOyhfGe87AiVmG9/RLvLQ9g5ClorgPihIa0L+gwBG
         gP77ovrAdCcLmXwl5E1i495J94kv3XXDNeo08pvje2wu+5qegw+BZ266gbDNdlAFja/u
         ABXnctYcsdkhfa8ONH7NuP3S1Nsg74mHslnve5b32/lHVY4bBNIIrVO/THn09aaiWgHn
         oT9fwo6AnZ9aBpxiky+fX+D5b8Lc3PjMlzgcHqWisEHBpVqkpaKj68DqZdbEB/WXg+IN
         JeqA==
X-Gm-Message-State: APuU4Z/apPuDG2+Bt49FZiEu+tcD47kW/IPNHkQeJTTzjd1BCfTv8kGV
	aEMhTa2RcRdiPNMv/7NIfEc4aMh/jl24GJHx+rrgMuszU4wYPvE5jHZfH5vd8LnY8V2rmoMvC2A
	J00CAmw++VPLxwfKt+/PZJgyVNfCxUbYWbWDRfGVzwtngsapPKiXFlgHdxCetuJ2AWMqo
X-Gm-Gg: AYBFou01Db59m/rSdoWYUzd+QheKT9oF25O0VpD/W4vdG26Twwif7DQ6L1lIRkNID+z
	MZ6Q2D+uI+WmatefcCq8oMcTUpyzrySsadiF04kNT6gCyxzVoSFRGu2u/Yp6GFFbr4NyMKcvNra
	Or+cBrGcZtBwh/MpSyLJMq9QnqWMPYdCZdaQiQBMAdVEWIsu1DIBIvyjzl0kHiMlVUN+X+Pt4VA
	UGdaUGaHujtTjDCAX/Gy2JFtf7hXT7w5nuDgPenrZgjJ6ApSJ+XJlQ+kfKmhref6RUr1fQpqAdI
	nxE/MJAvkp1bW9VAzbGyNA5cD+PQz9UQkPwkNpVErwWcqLzBukYZ87PyV0da/TJXdN1bLk1myKh
	wU+CjX8h2SgCPcHw0XMF+X8bl5Toezrb0rZfOpqqkgx+TayUfBJRNFPzM1fixZ+n7B3qhCGeaC4
	vXv+TCAUVa9Jt/dzRpYOeyF/HzUt83iAHx
X-Received: by 2002:a05:6a00:2d04:b0:886:31d3:51a2 with SMTP id d2e1a72fcca58-8a9bec6107bmr7559101b3a.39.1793610948755;
        Mon, 02 Nov 2026 01:15:48 -0800 (PST)
X-Received: by 2002:a05:6a00:2d04:b0:886:31d3:51a2 with SMTP id d2e1a72fcca58-8a9bec6107bmr7559078b3a.39.1793610948253;
        Mon, 02 Nov 2026 01:15:48 -0800 (PST)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8aada6bfdbesm1745367b3a.42.2026.11.02.01.15.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 01:15:47 -0800 (PST)
Message-ID: <a4370991-0d91-43ac-b91c-c1c416cfbb91@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 17:15:41 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 08/15] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: Vladimir Zapolskiy <vz@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-8-95f250b18612@oss.qualcomm.com>
 <dea88756-39d3-4c61-83d9-939ddb9336fa@kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <dea88756-39d3-4c61-83d9-939ddb9336fa@kernel.org>
X-Proofpoint-ORIG-GUID: dm3TMRPGw-zT5xsxAMh9K0q8DqrO0yLa
X-Authority-Analysis: v=2.4 cv=QuvLTlyd c=1 sm=1 tr=0 ts=6ae854c5 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=xlR6tl6hVQPR--6jroAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: dm3TMRPGw-zT5xsxAMh9K0q8DqrO0yLa
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfXwLTZXugoezwd
 I0KcJ5U2KENt3riPlZAzlmGWhjfkghTgFp7kQ66KN6yF5jcjNgeKZJJdxZXTYCjTRQgVUBg3pjs
 oq3hsOYK8V94BiDD+zOnWqLPJkHv8Nw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfX3H97LfQdidrZ
 nS8cWS3Kx9mvT7naYKsv5Gy1xmjt13nbPqPK75VxOoGzYhhiOPwluuRi36L1oejNCAZkv9uLLZP
 CGJJ/uk5GBAkgiKi/3TgHKD6ce4om4DtnhtfLiov8d7vsneKT4PxPmTGgjIlhGfNGn7FwtUkpBh
 dnJBhp4VPm+mJRdeQH5IvklZ7xNg2Pt+R4+3A4MuR//yJyAHaUtHaBYb6Tg4QhlJ+3sukN4zLGM
 /dHwUjhb1EIiCqYL/TzJc6kyFLSfuQmNNWaTmzc3IyG09J+x49RXbUiFho0OLf5aI5ky6Lk+CKE
 eFl5R/yJaVzvGWoZA6Pj/c3QPsOwdyJ1h3ZigtTgCTCW1xbfFW7PJmE1vKQREr2+jGmQfzeGjzO
 s4YpYUc3JHsPrhZOwYZIX9YVCJyk44mXeyuuQ3Uu+nzoq7WEMdKWdCVkQpDoHhMk9TRr+CITjLp
 i/dWB8Kb4UwkS/KL+/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_011550_899744_DF0B4484 
X-CRM114-Status: GOOD (  17.83  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMzEvMjAyNiAxOjAxIEFNLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4gSGVsbG8g
SGFuZ3hpYW5nLgo+IAo+IE9uIDEwLzI4LzI2IDE3OjIwLCBIYW5neGlhbmcgTWEgd3JvdGU6Cj4+
IEFkZCBzdXBwb3J0IGZvciB0aGUgdjIuNC4wIHR3by1waGFzZSBDU0lQSFkgZm91bmQgb24gS2Fh
bmFwYWxpLCB3aGVyZQo+PiB0aGUgUEhZIGlzIGRyaXZlbiBieSB0aGUgc3RhbmRhbG9uZSBwaHkt
cWNvbS1taXBpLWNzaTIgRFBIWSBkcml2ZXIKPj4gcmF0aGVyIHRoYW4gYnkgQ0FNU1MuIEFkZCB0
aGUgbWlwaV9jc2kyX2RwaHlfM25tX2thYW5hcGFsaSBjb25maWd1cmF0aW9uLAo+PiB3aGljaCBy
ZXVzZXMgdGhlIHgxZTgwMTAwIGxhbmUgc2VxdWVuY2UsIGNsb2NrcyBhbmQgc3VwcGxpZXMgYnV0
IHNlbGVjdHMKPj4gdGhlIHYyLjQuMCBjb21tb24gc3RhdHVzIG9mZnNldCwgYWRkcyBLYWFuYXBh
bGkgcG93ZXIgZG9tYWluIGFuZCByZWdpc3Rlcgo+PiB0aGUgInFjb20sa2FhbmFwYWxpLWNzaTIt
cGh5IiBjb21wYXRpYmxlLgo+Pgo+PiBSZXZpZXdlZC1ieTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5
YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEhhbmd4aWFuZyBNYSA8
aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKyAK
Pj4gKysrKysrKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMg
Yi9kcml2ZXJzLyAKPj4gbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4+IGluZGV4
IGE2NDI0MmM2NmNmMC4uYjBiNjNkZDNkOTU4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+PiBAQCAtMzgsNiArMzgsNTEgQEAKPj4gwqAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBwYXJlbnRfZGV2X29wcyB2ZmVfcGFyZW50X2Rldl9vcHM7Cj4+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IGNhbXNzX3N1YmRldl9yZXNvdXJjZXMgY3NpcGh5X3Jlc19rYWFuYXBh
bGlbXSA9IHsKPj4gK8KgwqDCoCAvKiBDU0lQSFkwICovCj4+ICvCoMKgwqAgewo+PiArwqDCoMKg
wqDCoMKgwqAgLmNzaXBoeSA9IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLmlkID0gMCwK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLmZvcm1hdHMgPSAmY3NpcGh5X2Zvcm1hdHNfc2Rt
ODQ1Cj4+ICvCoMKgwqDCoMKgwqDCoCB9LAo+PiArwqDCoMKgIH0sCj4gSXQgbWFrZXMgbm8gc2Vu
c2UgdG8gYmxvYXQgdGhlIGNvZGUgZm9yIG5vIGdvb2QgcmVhc29uLCBlc3BlY2lhbGx5IGlmCj4g
dGhlc2UgZW1wdHkgdGFibGVzIGFyZSB0byBiZSBhZGRlZCBmb3IgZXZlcnkgbmV3IHN1cHBvcnRl
ZCBwbGF0Zm9ybS4KPiAKPiBDU0lQSFlzIGlzIG5vdCBhIHBhcnQgb2YgdGhlIENBTVNTIG9uIHRo
aXMgcGxhdGZvcm0sIGhlbmNlIHJlc291cmNlcwo+IHNoYWxsIG5vdCBiZSBzdGF0aWNhbGx5IGFs
bG9jYXRlZCBmb3IgQ1NJUEhZcyBpbiB0aGUgQ0FNU1MgZHJpdmVyLgo+IAo+IFNlZSBhbHNvIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20vMjAyNjEwMjYyMjQ5NTcuMTExNTM3
MC0xLSAKPiB2ekBrZXJuZWwub3JnCj4gCgpBQ0suIFdpbGwgaW5jbHVkZSB0aGlzIGFuZCByZWZp
bmUgdGhpcyBzZXJpZXMuCgotLS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
