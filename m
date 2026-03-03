Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F9EDEDEBE2
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 18:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9qLoEm7inleQU0dQoLZ8cjha88GMz6eLOtdx+5xI/U=; b=CTotUoaM3HO6hQ
	XOsFoUWnw/ipLiguIhTwSGwLHomj/T2ZG2Dn6dyfXtSXJVXRpeEDO02B6uHp/vyEdd1t9iMyNWzM6
	gGpvfhkxyScEbg+1R5JLtjxQuMcT/bN1kjMyBR7eIRLSgygX4pTlLqDXVoKfz/WmI08/7gjVmBldK
	payKE6tz4Ywu6vJcbpoLH3AGjsd34GIRb+p0RDGJzwifFE7QPvPtY0GWrOnrdhKSLAsIJscEUbZsA
	uU/thcuKVpP2WVxiX3jDf4kidhc3EGVHpXpIcNK2mg+bDZIniKK3cig/nNuQSNY1DZibQEW00SXyr
	J4sIhtyOXbkkfvfNqzng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxUAa-0000000Fgtt-004W;
	Tue, 03 Mar 2026 18:08:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxUAX-0000000FgtT-0JdU
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 18:08:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H11q3688556
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 18:08:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jwy8L2ZRuW57YLR9RZEkBm6klL1WB8BD8yUqyTZrSMQ=; b=GK7k/Foy3nm6mpH2
	yCfZVX5nzCy67Fhii3BeZDlHnoS58JQjSxopk9MNaUyZxOEOT1N7yHjPxM2BhCME
	+LxJm5CP82yCkO93Lsr/6aHyDo5hE1l+hooxnqf3hYc8VSDfim3UotBqAQIybsv4
	c3G/pHw5f6zabMY4LQDU5RLRVMLhh8WKoOYrCziWbWVFm001TZz6V+wd8BW89HR7
	Z4Xdb01MpT5siJtJBGC9xtN9RtdRJ6VJhrZ1k9t/swCw+pWpthziJWd/jhMVPap9
	i+qAvaD7ySIyDZeiUu1n5khdlRsPrQhl2C0nO4Oi2xt7YubRFYilNqoL7S6v1J5S
	2h2laA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3na318-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 18:08:27 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2bda35eab74so945819eec.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 10:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772561307; x=1773166107; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jwy8L2ZRuW57YLR9RZEkBm6klL1WB8BD8yUqyTZrSMQ=;
        b=SDh8iWMUbtjPaaEr6yxRamDxxrfiVMgwK2KGt2WHLjmuP8llzGJ5zOojIBVGJZo39n
         DlCMgpDKrbVIlrT6OxC+ouvbZLKnCTIXASKnMJeyOzymO8AqxawD4E2frZrEL0GUnlYF
         3KFNHoU8smAy9vPAhuo7IUrc3c3J4FxwQBYUcHJv3nL99JOxv49F0vs3KKNLUij80wkH
         aA7PbB/8e/7Zd4aZUo+jap8yk9V/GN00uE0dyaN8Lw8n+wOtrodhaBnGakdXzUsBp1xU
         ykgJlBAN6VR6JXbZqq8hQHH0KmhC0q7k/o5Chn4jotkIl0mh3fxhqchs//syIrW3eh2C
         Kguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772561307; x=1773166107;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jwy8L2ZRuW57YLR9RZEkBm6klL1WB8BD8yUqyTZrSMQ=;
        b=ZmpZoS1a+JjnAQ+z/dJKWZhvExk0vUv/a/SV5B6T1aQ81KlTaA22NHtKZMdzhOlys8
         vgOFrxtLsMcWIOnToGszJUkXzuVtH0fFbgfHgSYoiI07MQqsrjGx/a2EGf+u9LfvzN69
         8NipaF9cVeP+LcBvnxqj4D/INSHt0Hom/mmim7k8vF0xqgtBVXgp70YPCf0Ttag4E7sf
         /RLmH5cajuTjLHcH9aFaY0aFD0ggOrjANHZPlQFbTkORQGDaK6yRkt3oAFsZRP4KF8tF
         anqals801g6+6u68z6aW06NjYBJBNtR7qTDH3YR7a0YhvarkBUHnrD5H7qTL2tngNBFS
         3cqw==
X-Forwarded-Encrypted: i=1; AJvYcCU3UUgn9jdc3VYkaQftc+rW3v1TJ8eXnlJ6aP34NdJbl+pOx+1f7Ki8SwY/rz938mv+WXmdykZuU1w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxefOcUuT1vgw4XZpv3Zd/sib7MPMCZK7k48XxVi7I1AVTspoKJ
	kHmwjYsLq/K81Eu3vViPMnDdQ16VY350LodXaSh/H/lYNdJtubnVoj6yAt8KBjkb/iqkq9nIx2b
	KHocPBi9P720SEsPfIANGfSQjCuCww8Pm9vj5cJZT591PfxdvABQ2Xc8Xgt9mPf4SmSbs
X-Gm-Gg: ATEYQzw4eaJELao9SQDSrm6LaLkYOl5+Th1XfJlWSBiMocjDSM7WeDNl0iEg0r2wu4Q
	A7pt4sYHKuTMB4jwhPPDWPi2EzBlS30DVz2Q5KA0qyOnpZ5W6Y9ScD2Sso3wT+YD0d/fzIPjYFK
	LYEmfm+6Mu8rC6MfoD+brJQ4qaMvMrDVnkxmmVzshfUsj3fy3E4b3oMBEST/czwDKohrPhpCNwo
	1JWNYpAXsh6AvTjRlA9Lyha4LugCSAGuLEX/qpk0WeK6hwR8oK1+BPYEZTbyk3BerMeCVH/MXTb
	WL+f+Wg6tvqnuivayQ7nYCP4atY8BaPhQ4cmLqaSWJYhj6fS3GzgaKf6D/ZCCZa4MLpEgRteUMN
	wgid8ovJPZ7lThJvC7rwT7Y3T3in2wEeM7gLEgoQ8zqnOpqTPI4yCFAXi
X-Received: by 2002:a05:7301:fa10:b0:2b8:6896:d0e6 with SMTP id 5a478bee46e88-2be2342a21cmr1055022eec.7.1772561306673;
        Tue, 03 Mar 2026 10:08:26 -0800 (PST)
X-Received: by 2002:a05:7301:fa10:b0:2b8:6896:d0e6 with SMTP id 5a478bee46e88-2be2342a21cmr1054995eec.7.1772561306037;
        Tue, 03 Mar 2026 10:08:26 -0800 (PST)
Received: from [172.20.10.12] ([172.56.179.142])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2afa297asm515339eec.23.2026.03.03.10.08.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 10:08:25 -0800 (PST)
Message-ID: <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 10:08:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <4pFL6wOeTKUt-Zq4YbjqJdacMgUIPSYJD-4-5DcIMEZ1sM7JsNFYcSv1bd7ZRVOklTsmkEfxM2b6tTflmiECNQ==@protonmail.internalid>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a7239b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=393jXSRlBufqMOIp+yiRFw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=63XN3Wpy_Vpkm10PPgsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: mf24NNhbDdCFHU0iysJC5PVkFVsWJeHy
X-Proofpoint-GUID: mf24NNhbDdCFHU0iysJC5PVkFVsWJeHy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE0NSBTYWx0ZWRfX+F0aMfo+hhGV
 gBgxllygnx3I3ydGx8pURxb6+zxkXPJNB/jhdkxVLgVybsp2/UY5GvHVKj/grgnBekE4zeJyYm/
 dLAp4A9m6v78qZSE4k8EyWdPdfP7YrofgGCjiJWKJDTQwUZ91GG0hFWCzJ7qvWQS6YIujbkFkYr
 ABvxT/qZx98emkjKhH//v3iTNCpObpcP8b9HSJzjIUkKPvZLyXUQMyryJCLtlxjhL2TqDCpJfOS
 FzgaiZv9utc9uznnIRX5TiedplaqmPlHkXpem8eVlxPiidvQP6BeFCsep3MlFPMgwr+esS5qn96
 ds8p9Hk/94mAIH9+/5BtawZ2CmPLGXyWEXMUg2r5npJTzkzLezSR7u9qeIfB7KNePB6tdzvucz8
 9uFWQWBbRPg1TwH3p2gi7CHn/IfZ/jx6PLoQ4hi0sMA+daIHiOQSFZFbkx6XkREHGgWCnKuiOf9
 cb+l8FKBHkRAIvTAeOg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_100829_238501_4685EF3C 
X-CRM114-Status: GOOD (  25.27  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAzLzMvMjAyNiAxOjI3IEFNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDAzLzAz
LzIwMjYgMDE6NTEsIFZpamF5IEt1bWFyIFR1bWF0aSB3cm90ZToKPj4gSGkgQnJ5YW4sCj4+Cj4+
IE9uIDIvMjYvMjAyNiA0OjM0IEFNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+Pj4gQWRkIGEg
YmFzZSBzY2hlbWEgaW5pdGlhbGx5IGNvbXBhdGlibGUgd2l0aCB4MWU4MDEwMCB0byBkZXNjcmli
ZSBNSVBJIAo+Pj4gQ1NJMgo+Pj4gUEhZIGRldmljZXMuCj4+Pgo+Pj4gVGhlIGhhcmR3YXJlIGNh
biBzdXBwb3J0IGJvdGggQy1QSFkgYW5kIEQtUEhZIG1vZGVzLiBUaGUgQ1NJUEhZIGRldmljZXMK
Pj4+IGhhdmUgdGhlaXIgb3duIHBpbm91dHMgb24gdGhlIFNvQyBhcyB3ZWxsIGFzIHRoZWlyIG93
biBpbmRpdmlkdWFsIAo+Pj4gdm9sdGFnZQo+Pj4gcmFpbHMuCj4+Pgo+Pj4gVGhlIG5lZWQgdG8g
bW9kZWwgdm9sdGFnZSByYWlscyBvbiBhIHBlci1QSFkgYmFzaXMgbGVhZHMgdXMgdG8gZGVmaW5l
Cj4+PiBDU0lQSFkgZGV2aWNlcyBhcyBpbmRpdmlkdWFsIG5vZGVzLgo+Pj4KPj4+IFR3byBuaWNl
IG91dGNvbWVzIGluIHRlcm1zIG9mIHNjaGVtYSBhbmQgRFQgYXJpc2UgZnJvbSB0aGlzIGNoYW5n
ZS4KPj4+Cj4+PiAxLiBUaGUgYWJpbGl0eSB0byBkZWZpbmUgb24gYSBwZXItUEhZIGJhc2lzIHZv
bHRhZ2UgcmFpbHMuCj4+PiAyLiBUaGUgYWJpbGl0eSB0byByZXF1aXJlIHRob3NlIHZvbHRhZ2Uu
Cj4+Pgo+Pj4gV2UgaGF2ZSBoYWQgYSBjb21wbGV0ZSBib2RnZSB1cHN0cmVhbSBmb3IgdGhpcyB3
aGVyZSBhIHNpbmdsZSBzZXQgb2YKPj4+IHZvbHRhZ2UgcmFpbCBmb3IgYWxsIENTSVBIWXMgaGFz
IGJlZW4gYnVyaWVkIGluc2lkZSBvZiBDQU1TUy4KPj4+Cj4+PiBNdWNoIGxpa2UgdGhlIEkyQyBi
dXMgd2hpY2ggaXMgZGVkaWNhdGVkIHRvIENhbWVyYSBzZW5zb3JzIC0gdGhlIENDSSAKPj4+IGJ1
cyBpbgo+Pj4gQ0FNU1MgcGFybGFuY2UsIHRoZSBDU0lQSFkgZGV2aWNlcyBzaG91bGQgYmUgaW5k
aXZpZHVhbGx5IG1vZGVsbGVkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEJyeWFuIE8nRG9ub2do
dWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+Pj4gLS0tCj4+PiDCoMKgIC4uLi9iaW5k
aW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1swqDCoMKgwqDCoMKgIHwgMTE0ICsr
KysrKysrKyAKPj4+ICsrKysrKysrKysrKwo+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgMTE0IGlu
c2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLSAKPj4+IGNzaTItcGh5LnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtIAo+Pj4gY3NpMi1w
aHkueWFtbAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMDAu
LmM5MzdkMjZjY2JkYTkKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1sCj4+PiBA
QCAtMCwwICsxLDExNCBAQAo+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4w
IE9SIEJTRC0yLUNsYXVzZSkKPj4+ICslWUFNTCAxLjIKPj4+ICstLS0KPj4+ICskaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwj
Cj4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlh
bWwjCj4+PiArCj4+PiArdGl0bGU6IFF1YWxjb21tIENTSTIgUEhZCj4+PiArCj4+PiArbWFpbnRh
aW5lcnM6Cj4+PiArwqAgLSBCcnlhbiBPJ0Rvbm9naHVlIDxib2RAa2VybmVsLm9yZz4KPj4+ICsK
Pj4+ICtkZXNjcmlwdGlvbjoKPj4+ICvCoCBRdWFsY29tbSBNSVBJIENTSTIgQy1QSFkvRC1QSFkg
Y29tYmluYXRpb24gUEhZLiBDb25uZWN0cyBNSVBJIENTSTIgCj4+PiBzZW5zb3JzCj4+PiArwqAg
dG8gUXVhbGNvbW0ncyBDYW1lcmEgQ1NJIERlY29kZXIuIFRoZSBQSFkgc3VwcG9ydHMgYm90aCBD
LVBIWSBhbmQgCj4+PiBELVBIWQo+Pj4gK8KgIG1vZGVzLgo+Pj4gKwo+Pj4gK3Byb3BlcnRpZXM6
Cj4+PiArwqAgY29tcGF0aWJsZToKPj4+ICvCoMKgwqAgY29uc3Q6IHFjb20seDFlODAxMDAtY3Np
Mi1waHkKPj4+ICsKPj4+ICvCoCByZWc6Cj4+PiArwqDCoMKgIG1heEl0ZW1zOiAxCj4+PiArCj4+
PiArwqAgIiNwaHktY2VsbHMiOgo+Pj4gK8KgwqDCoCBjb25zdDogMQo+Pj4gKwo+Pj4gK8KgIGNs
b2NrczoKPj4+ICvCoMKgwqAgbWF4SXRlbXM6IDQKPj4+ICsKPj4+ICvCoCBjbG9jay1uYW1lczoK
Pj4+ICvCoMKgwqAgaXRlbXM6Cj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBjc2lwaHkKPj4+ICvC
oMKgwqDCoMKgIC0gY29uc3Q6IGNzaXBoeV90aW1lcgo+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDog
Y2Ftbm9jX2F4aQo+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogY3Bhc19haGIKPj4+ICsKPj4+ICvC
oCBpbnRlcnJ1cHRzOgo+Pj4gK8KgwqDCoCBtYXhJdGVtczogMQo+Pj4gKwo+Pj4gK8KgIG9wZXJh
dGluZy1wb2ludHMtdjI6Cj4+PiArwqDCoMKgIG1heEl0ZW1zOiAxCj4+PiArCj4+PiArwqAgcG93
ZXItZG9tYWluczoKPj4+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPj4+ICsKPj4+ICvCoCB2ZGRhLTBw
OC1zdXBwbHk6Cj4+PiArwqDCoMKgIGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIGEgMC44ViByZWd1
bGF0b3Igc3VwcGx5IHRvIGEgUEhZLgo+Pj4gKwo+Pj4gK8KgIHZkZGEtMXAyLXN1cHBseToKPj4+
ICvCoMKgwqAgZGVzY3JpcHRpb246IFBoYW5kbGUgdG8gMS4yViByZWd1bGF0b3Igc3VwcGx5IHRv
IGEgUEhZLgo+Pj4gKwo+Pj4gK3JlcXVpcmVkOgo+Pj4gK8KgIC0gY29tcGF0aWJsZQo+Pj4gK8Kg
IC0gcmVnCj4+PiArwqAgLSAiI3BoeS1jZWxscyIKPj4+ICvCoCAtIGNsb2Nrcwo+Pj4gK8KgIC0g
Y2xvY2stbmFtZXMKPj4+ICvCoCAtIGludGVycnVwdHMKPj4+ICvCoCAtIG9wZXJhdGluZy1wb2lu
dHMtdjIKPj4+ICvCoCAtIHBvd2VyLWRvbWFpbnMKPj4+ICvCoCAtIHZkZGEtMHA4LXN1cHBseQo+
Pj4gK8KgIC0gdmRkYS0xcDItc3VwcGx5Cj4+PiArCj4+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6
IGZhbHNlCj4+PiArCj4+PiArZXhhbXBsZXM6Cj4+PiArwqAgLSB8Cj4+PiArwqDCoMKgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+PiArwqDC
oMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLHgxZTgwMTAwLWNhbWNjLmg+Cj4+
PiArwqDCoMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLHgxZTgwMTAwLWdjYy5o
Pgo+Pj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3BoeS5oPgo+Pj4gKwo+Pj4g
K8KgwqDCoCBjc2lwaHlAYWNlNDAwMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9
ICJxY29tLHgxZTgwMTAwLWNzaTItcGh5IjsKPj4+ICvCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgw
YWNlNDAwMCAweDIwMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgICNwaHktY2VsbHMgPSA8MT47Cj4+
PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjYW1jYyBDQU1fQ0NfQ1NJUEhZMF9D
TEs+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2FtY2MgQ0FNX0ND
X0NTSTBQSFlUSU1FUl9DTEs+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDwmY2FtY2MgQ0FNX0NDX0NBTU5PQ19BWElfUlRfQ0xLPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCA8JmNhbWNjIENBTV9DQ19DUEFTX0FIQl9DTEs+Owo+Pj4gK8KgwqDC
oMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gImNzaXBoeSIsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjc2lwaHlfdGltZXIiLAo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY2Ftbm9jX2F4aSIsCj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjcGFzX2FoYiI7Cj4+PiArCj4+
PiArwqDCoMKgwqDCoMKgwqAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3NpcGh5X29wcF90YWJs
ZT47Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ3NyBJ
UlFfVFlQRV9FREdFX1JJU0lORz47Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9t
YWlucyA9IDwmY2FtY2MgQ0FNX0NDX1RJVEFOX1RPUF9HRFNDPjsKPj4gQXMgd2UgYXJlIGNsZWFu
aW5nIHVwIHRoZSBQSFkgZGV2aWNlIG5vZGVzLCB3ZSBzaG91bGQgY29uc2lkZXIgZml4aW5nCj4+
IHRoZSBwb3dlciBkb21haW5zIGFzIHdlbGwuIEFsdGhvdWdoIFRPUCBHRFNDIGlzIGRlZmluZWQg
YXMgYSBwb3dlcgo+PiBkb21haW4sIGl0IGlzIG5vdCB0aGUgcG93ZXIgc291cmNlIGZvciB0aGUg
UEhZIGRldmljZXMuIFJhdGhlciwgaXQgaXMKPj4gdGhlIE1NQ1gsIE1YQyBhbmQgb3B0aW9uYWxs
eSBNWEEgYmFzZWQgb24gdGhlIGFyY2hpdGVjdHVyZSAoUmVmZXIgdG8KPj4gJ1ZvbHRhZ2UgcmFp
bCcgY29sdW1uIGZvciBQSFkgY2xvY2tzIGluIElQQ0FUKS4gCj4gCj4gRmVlbCBmcmVlIHRvIHNl
bmQgbWUgYSBxY29tIGxhcHRvcCBhbmQgSSB3aWxsIDopCjopCj4gCj4gIEZyb20gbWVtb3J5IHRo
b3VnaCBJIF90aG91Z2h0XyBvbmx5IHRoZSBUT1Agd2FzIHJlcXVpcmVkIGZvciB0aGUgUEhZLiAK
PiBJJ2QgYmUgZ3JhdGVmdWwgaWYgeW91IGNvdWxkIGNvbmZpcm0geW91cnNlbGYgaW4gaXBjYXQu
Cj4gCj4gLSBUSVRBTl9UT1BfR0RTQwo+IC0gTVhDCj4gLSBNTUNYCj4gLSBNWEEgLSBmaXJzdCB0
aW1lIEkndmUgaGVhcmQgb2YgdGhpcyByYWlsLCBmcm9tIG1lbW9yeSBJIGRvbid0IHJlbWVtYmVy
Cj4gIMKgwqDCoMKgwqDCoMKgIGhhdmluZyBzZWVuIHRoaXMgaW4gaXBjYXQgd2hlbiBJIGNvdWxk
IGRvIHNvLgpNQ1ggYW5kIE1NQ1ggYXJlIGNvbW1pbmx5IHJlcXVpcmVkIHBvd2VyIGRvbWFpbnMg
YWNyb3NzIHRoZSBQSFlzIGJ1dCBhIApzdWJzZXQgb2YgUEhZcyBoYXZlIHRoZSBkZXBlbmRlbmN5
IG9uIE1YQS4KPiAKPiBUaGVyZSBpcyBubwo+PiBwYXJlbnQtY2hpbGQgcmVsYXRpb25zaGlwIGJl
dHdlZW4gdGhlIFRPUCBHRFNDIGFuZCB0aGVzZSBpbiB0aGUgY2xvY2sKPj4gZHJpdmVyIGFuZCBp
dCB3YXMganVzdCB3b3JraW5nIGFzIHRoZSByZXF1aXJlZCBwb3dlciByYWlscyBhcmUgZ2V0dGlu
Zwo+PiBlbmFibGVkIGJ5L2ZvciBvdGhlciBNTSBkZXZpY2VzLgo+IAo+IFdlbGwgb25seSB0aGUg
R0RTQyBpcyBzdXBwbGllZCBieSB0aGUgY2xvY2sgY29udHJvbGxlci4KUmlnaHQsIEdEU0MgaXMg
Y29udHJvbGxlZCBieSB0aGUgQ0FNQ0MgdG8gc3VzcGVuZCB0aGUgc3Vic3lzdGVtcy4gQnV0IAp0
aGUgYWN0dWFsIHBvd2VyIHN1cHBseSBhbmQgdGhlIHZvbHRhZ2UgcmFpbHMgYXJlIHVuZGVyIHRo
ZSBjb250cm9sIG9mIAp0aGUgUlBNSC4gU28gdGhlIGNsaWVudHMgbmVlZCB0byBlbmFibGUgYW5k
IHZvdGUgZm9yIHRoZSByZXF1aXJlZCBwZXJmIApjb3JuZXIgYXMgdGhlIGNvcmUgY2xvY2tzIHNj
YWxlIHVwL2Rvd24gdG8gYmUgaW5kZXBlbmRlbnQgb2YgdGhlIG90aGVyIApzdWJzeXN0ZW1zIHNo
YXJpbmcgdGhvc2Ugdm9sdGFnZSByYWlscy4KPiAKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoCB2
ZGRhLTBwOC1zdXBwbHkgPSA8JnZyZWdfbDJjXzBwOD47Cj4+PiArwqDCoMKgwqDCoMKgwqAgdmRk
YS0xcDItc3VwcGx5ID0gPCZ2cmVnX2wxY18xcDI+Owo+Pj4gK8KgwqDCoCB9Owo+Pj4gKwo+Pj4g
K8KgwqDCoCBjc2lwaHlfb3BwX3RhYmxlOiBvcHAtdGFibGUtY3NpcGh5IHsKPj4+ICvCoMKgwqDC
oMKgwqDCoCBjb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+Pj4gKwo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIG9wcC0zMDAwMDAwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
b3BwLWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAwMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzX2QxPjsKPj4+ICvCoMKgwqDC
oMKgwqDCoCB9Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIG9wcC00MDAwMDAwMDAgewo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BwLWh6ID0gL2JpdHMvIDY0IDw0MDAwMDAwMDA+Owo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9s
b3dfc3ZzPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKg
IG9wcC00ODAwMDAwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BwLWh6ID0gL2Jp
dHMvIDY0IDw0ODAwMDAwMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQt
b3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+Pj4g
K8KgwqDCoCB9Owo+Pj4KPj4gVGhhbmtzLAo+PiBWaWpheS4KPiAKVGhhbmtzLApWaWpheS4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
