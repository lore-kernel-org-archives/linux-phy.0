Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83189D5C0D1
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 08:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u55ys8VYDXJmdUXMqjGE9Rwsmd44H+JIlv2QO9XHZKQ=; b=bE+XQh2eEEl/C7
	2iu7rEY3Q6aE6Xza++bx7p5zeb6E8P9LtttwF6FBiRFHvPewMdca9HC/N3Ck3pm/1wvybTKoTeUTG
	yUbiU5HU59XoWepv6216ndyYXA02hfyw3sNqHQ9etSqeum/afoMfnMURhpkU43jS2sZ0iA7juCB9J
	vEITnxjRSH9PB6lr0fqa2q9u9X6O/pX1I06TtXtkbHds5V+Mmgjmh4AhyUYLSv6AWoa5M1ODxrokA
	krLbswKEQG+fTvyjgx/Tq+syuBYfIQ1OqpFWtzNWNOzYG0bVe1HtCnrZzyFMXfD772wSbjSkqd2/S
	olxqHK9bZEPvXVOxMu5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQHJ-00000004ubw-3vEp;
	Tue, 16 Dec 2025 08:19:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQGv-00000004ubE-2i2H
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 08:19:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG6ghrY825814
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:19:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	huFM7pFhu3QjZVVHAh0e9KZi69KVAcuDEQj7pluXnaM=; b=N45WPxT6LavJqkR8
	km1PSKddLLH8FDd/Ch798GU+iUurTaJM14uAd+XvXPc64yN9CS/auMwq7vyarGF2
	KROvkq/SuFEeKkjrC/2P0wAm0m5dPKFHdeAul+RHdDIrOqeiHYXXmAaAvIua4Jx2
	5WgmAIikdwMTtxck53WD/D50mXZhaigb9naKwaOCZxVtbtk8sIigCc4sTv8lqn/M
	ChFUwJHEj0wmtrQRDtv1qrYpJm3DP6fiYAlikb7h7uQfqGWhGSkucADBbxf0kySr
	+i59YMPfQRcO0KIOKAPFNjdVY3AInHTVowaod/KKAG/B1lnOI4hc8PLnbhHO66NX
	0DsSBA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2nceu42f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:19:04 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630753cc38so7230092a12.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 00:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765873144; x=1766477944; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=huFM7pFhu3QjZVVHAh0e9KZi69KVAcuDEQj7pluXnaM=;
        b=jmYTMxed2InT2qQecOUPj5GuEpkCZHIlQ5sEPzob8ldoZ8fQzJx6wS5mqTJdsnBPw6
         idxn2AE0TDTp/z73EV1k0U5a5DCiFnfY3fHNrXh3FjlOv47n9WdjOj5hLytJ/ptoLDQ6
         J0eBdj+I5CaBLwQuivj36dAsCqS0MM2K655aJNukqykLTuuaSSaB+sffF9qYg57aPKuY
         nkvT2LjWYN9LWB/dgYDYBDaWkltgTtvNcUaS95o9uNZOj91p6QvOOLN/H4JW8BByoAoh
         LdvC6DUYlczOpnUviKBjn7a4TSFiirvJFL554CatKWaxNIY0zb59hkf+wExxJg+A/c3/
         GgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765873144; x=1766477944;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=huFM7pFhu3QjZVVHAh0e9KZi69KVAcuDEQj7pluXnaM=;
        b=UbULkkNRj/fcXimclEBCL7m3HeBpQp1XDftKoDI9o6cFM7+oIqfUCMYEnnjYGC4fBP
         rMpaYhjBSaL5pEuaiH9hm8ZrpiCN/mRT5+NkJfrNR67ttM6WjGAjf/WWOeq+k3s5A4E1
         5D4Rge3+3UqVAOCSsFYb7FyUxrs5COnoBpq0gcmVCFmMZzuDFEiG9tqstj0UR7Ce+VKI
         CUmlnAFFlV6kongwDCwz5PuMMSM0XhBD5k4oVjLsQH4IUcDY6K6AKLJcRdBGlC7WYH1e
         UE4dTPiNLhHInrwXQLhl8OPx+QHMXiOuxBYe1V8Gw6FqvSgWneK1GhvgtK21ggdqaCs5
         wnVw==
X-Forwarded-Encrypted: i=1; AJvYcCURkBEtJ9Dcrqcb7YbO82PD5HzungIlDwaEVGlYwCrBnVuEumLDuD5HcV+Mzyic/HjhTq5hsrzoKKg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcAC90p6FdlVhgUUtbP1JOEntpCUkcX/qRdr0unrGWWtS8D+5C
	mCofTbV2IlxM3dA4plgg6vuNadAUONnK2hAU+i9qlsfMnakuxdJ/MvnPAfhhmsJaw0x2IJo8C4y
	uO1UUVaFCX61TDYaWVMQgXgz+Zzh5v6TENoW+ZSbOQNL2vAqUnAWo7ObAGzHD0EvqJTUs
X-Gm-Gg: AY/fxX4O9/2fxZkjRgVGsQMo+klDhmugCJG/YdoCZ9h+idkL0ek9NChxIPyvXF9GkhX
	KkkfqM3rYn1JbKiledZ6YZbg8ZBiUnuYESiomYlp7bTSn1ZGxzNm0VIKWAfkkY1rAqQQ7INM6Uw
	mPCtbMBT7KF5p9JyE+UPq/FRiOnMLkHF4QhJS0vyfwz4eFkNHkIq/H0K9cbAYAtarLQh93kv+Z3
	G9RT+Dtquxt+4idLRkO5o2G3XCLCGiIEiKd0HsyboFZYpa+KL2e2VDnrt+hZaEMaEbyGPkeuIhi
	pm8PjMKfAS8CJ3lRl2M4Y3vyJpeoy/il2uy/8VFbeqxaBd0aS2zHxaHrManAcE1UwSfuZjS+qBx
	oGHvUqV9FpOIgTclqc3799NUbTDjJQE0Dz4kR0MLzHWvYIw==
X-Received: by 2002:a05:7301:53c3:b0:2ac:4db:9481 with SMTP id 5a478bee46e88-2ac2f8d1712mr8796801eec.19.1765873143531;
        Tue, 16 Dec 2025 00:19:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtWK4e1bXvpwdT10fDqm6Qj7IweZrG+0/Xy2p/wK3bauMqiPSgjejfvkiWk4/F8BT9BHrDXg==
X-Received: by 2002:a05:7301:53c3:b0:2ac:4db:9481 with SMTP id 5a478bee46e88-2ac2f8d1712mr8796785eec.19.1765873142910;
        Tue, 16 Dec 2025 00:19:02 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ae4f054711sm652371eec.34.2025.12.16.00.18.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 00:19:02 -0800 (PST)
Message-ID: <09debd16-dd3d-4a9c-9b70-8b1093d4d5c1@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:48:55 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
 <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
 <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
 <db033ab1-9b5f-41e7-8048-3ae327b48ad4@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <db033ab1-9b5f-41e7-8048-3ae327b48ad4@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: LR2KXaY-IN9xDhASK3BKJBPGVJn2tRf8
X-Proofpoint-GUID: LR2KXaY-IN9xDhASK3BKJBPGVJn2tRf8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA2OCBTYWx0ZWRfX96ZPhKaknXCk
 jwONHG0Ux6Ol4xSjxI0r37+gFIt/isfSidTlRDkrBwrX4dwvRtZwV5k9CYkPunQ4PExtlET9Svo
 R69ijGETQ0sbDOGBUT2cNl+4W9gZrpakiuX6VJAzihJAn0EpceT4q3xTXANw9cac478pWxy6VFr
 XGGdFn3qm8TC0Y4KjNqSpFtBOXPW6TTTm/YM6Xsv6yG28eeivEJ/LNodOCK8KVNypHKM0It0Xzb
 GE1FPSX1BF+EeaXyVR8uJRrFDzKZ9AmzcvVvb6ruEa1iwpe87HTn5sZeSrxGsHF4Frh4GZURqKH
 Z8xWzPSTIhTZWH/qz4PVnBI50eFhuQQ1CAStz6Bu7Vo9nkuKDX3UV87yECW1VodI3Kt9BJuSo7I
 h0tgDYIpeOMaSLVpF9bKq0va4wXhIA==
X-Authority-Analysis: v=2.4 cv=XJU9iAhE c=1 sm=1 tr=0 ts=694115f8 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lUzGdAYB4nMR4joB8mcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_001905_696647_8C70F550 
X-CRM114-Status: GOOD (  16.17  )
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

CgpPbiAxMi85LzIwMjUgMTA6MDYgQU0sIEtyaXNobmEgS3VyYXBhdGkgd3JvdGU6Cj4gCj4gCj4g
T24gMTIvNi8yMDI1IDQ6MzIgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIEZy
aSwgRGVjIDA1LCAyMDI1IGF0IDEwOjU1OjM2UE0gKzAyMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3Jv
dGU6Cj4+PiBPbiBUaHUsIERlYyAwNCwgMjAyNSBhdCAxMDoxNjo0MkFNICswNTMwLCBLcmlzaG5h
IEt1cmFwYXRpIHdyb3RlOgo+Pj4+IEFkZCBzcXVlbGNoIGRldGVjdCBwYXJhbWV0ZXIgdXBkYXRl
IGZvciBzeW5vcHN5cyBldXNiMiByZXBlYXRlci4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEty
aXNobmEgS3VyYXBhdGkgPGtyaXNobmEua3VyYXBhdGlAb3NzLnF1YWxjb21tLmNvbT4KPj4+PiAt
LS0KPj4+PiDCoCAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzbnBzLWV1c2IyLXJl
cGVhdGVyLnlhbWwgfCA4ICsrKysgCj4+Pj4gKysrKwo+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc25wcy1ldXNiMi0gCj4+Pj4gcmVwZWF0ZXIueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzbnBzLSAKPj4+PiBl
dXNiMi1yZXBlYXRlci55YW1sCj4+Pj4gaW5kZXggNWJmMGQ2YzljMDI1Li5mMmFmY2YwZTk4NmEg
MTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9x
Y29tLHNucHMtZXVzYjItIAo+Pj4+IHJlcGVhdGVyLnlhbWwKPj4+PiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc25wcy1ldXNiMi0gCj4+Pj4gcmVwZWF0
ZXIueWFtbAo+Pj4+IEBAIC01OSw2ICs1OSwxNCBAQCBwcm9wZXJ0aWVzOgo+Pj4+IMKgwqDCoMKg
wqAgbWluaW11bTogMAo+Pj4+IMKgwqDCoMKgwqAgbWF4aW11bTogNwo+Pj4+ICvCoCBxY29tLHNx
dWVsY2gtZGV0ZWN0b3ItYnA6Cj4+Pgo+Pj4gLXVWPyAtbVY/Cj4+Cj4+IElmIHRoaSBzaXMgYWRq
dXN0bWVudCBpbiByYXRpbywgdGhlbiBicCBpcyBjb3JyZWN0LiBTb21lIHNvcnQgb2YKPj4gZXhw
bGFuYXRpb24gaW4gY29tbWl0IG1zZyB3b3VsZCBiZSBuaWNlLCBidXQgSSBkb24ndCB3YW50IHRv
IHN0YWxsIHRoZQo+PiBwYXRjaHNldCBmb3IgdGhhdC4KPj4KPj4gQXNzdW1pbmcgdGhpcyBpcyBp
bmRlZWQgcmF0aW8gd2l0aG91dCBhY3R1YWwgU0kgdW5pdHM6Cj4+Cj4+IFJldmlld2VkLWJ5OiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+
Cj4+Cj4gCj4gVGhhbmtzIGZvciB0aGUgUkIgS3J6eXN6dG9mLAo+IAo+ICDCoENhbiBJIHVwZGF0
ZSB0aGUgZm9sbG93aW5nIGFzIGNvbW1pdCB0ZXh0IGFuZCByZXRhaW4geW91ciBSQiB3aGVuIAo+
IHNlbmRpbmcgdjM6Cj4gCj4gIkFkZCBzcXVlbGNoIGRldGVjdCBwYXJhbWV0ZXIgdXBkYXRlIGZv
ciBzeW5vcHN5cyBldXNiMiByZXBlYXRlci4gVGhlCj4gdmFsdWVzIChpbmRpY2F0ZWQgaW4gYmFz
aXMtcG9pbnRzKSBkZXBpY3QgYSBwZXJjZW50YWdlIGNoYW5nZSB3aXRoCj4gcmVzcGVjdCB0byB0
aGUgbm9taW5hbCB2YWx1ZS4iCj4gCgpIaSBLcnp5c3p0b2YsCgogIENhbiB5b3UgaGVscCBsZXQg
bWUga25vdyBpZiB0aGUgYWJvdmUgY29tbWl0IG1lc3NhZ2UgY2FuIGJlIGFkZGVkIHdpdGggCnJl
dGFpbmluZyB5b3VyIFJCIHRhZy4KClJlZ2FyZHMsCktyaXNobmEsCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
