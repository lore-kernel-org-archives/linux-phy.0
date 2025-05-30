Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41D27C5B552
	for <linux-phy@archiver.kernel.org>; Fri, 30 May 2025 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T008s1JNOfUG9iekJ1cGg4xZgslcF5AbP1UjNLiLvtE=; b=qA1duusSXzZkXc
	sCFqk551aX3g33PDl6SdXKbrrknCUldqnoDEaYfpzlIJglJqOs+TtxO04nvntRvLbOR5ohoWjfA6P
	EzOJm6wil4rU7Za0GpxoUj0UCHn9bCDT6BpFAoztRCl39fer7i00xjZEIPQb+JDSt2UhDF8LCmu6m
	wRWKTBGu1UF444Quz2BwQjbCn6ahaXC2kkbSLXC82Xiw4dfPENFNB8xermGeSJ1CGDRYVS2PV0DXi
	ygal/Fp26BSI2zijXkJW9CfQ9WJAY1MyncDlxZ5t6Ou9c7L6/VV6eaM2kDxsL5jKa5IENiVLD0Tm1
	czu2JXlWLv7QMT17bjRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKxPw-00000000LGV-3lP4;
	Fri, 30 May 2025 10:56:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKxPv-00000000LG1-0OC0
	for linux-phy@lists.infradead.org;
	Fri, 30 May 2025 10:56:52 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54U05ioc011696
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 10:56:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	odW9Gnbh0pAigIu977/CYjbuP4cZbGddXolCkSLXzHI=; b=kZRVEeIjcFr+g/o2
	H7opx7uDuqhRJhyu3p9dKmR3VsPNX2SDDngRwAy4PjXS2Kny+Bbf6LwhzObSjFO7
	bbex/gcsQN7IWlPObXnT64+6u5Hyzxvst3C3zVCOTk36cCys9SuEpec+NW/f8kPH
	kr0jXKFwvI4LN+djLvmlXOuP/C1faSFbBu6iApc2MqPMflDnwerCyhn1oAzD5CHw
	/CkkIdGXRtTJfCxfZq5eJgHXcM+f/z7CvymjPTrXOvHBmd/QZS3JYdH+7JOeiYxC
	QdmULlmPJKse2D1ChjNTmO0NcNAn7xTURhiMSPTymdFklTmJJsp8e05H//IKrP3/
	8bJJ4w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g98suk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 10:56:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7ceec331273so40487885a.3
        for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 03:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748602609; x=1749207409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=odW9Gnbh0pAigIu977/CYjbuP4cZbGddXolCkSLXzHI=;
        b=ePTOZGHr7eyI/wepEYYNM5qAWAH8dMAbahBg2zHSy4CV/SLo6YBvoCaL4tohRbFnkN
         YEpjbsfsEleP2NlnakCan6uIaMbw10847P0wye96xRtzddyD5i85J8BpFUc6jQMPk4lp
         CIXpWVU0lcaefNFO+OdWGf1uU8bSbGSOjt/BWdS1mpp42WLVwpcvYvNWRWcZcLpA/ZhM
         UtNWArkaqw2PlsFXjqdxakb491MCeknp8sw9bxOk/vGp02wVRLW+dRNhkN+EhrWiF3Zx
         zIbHPUzT3AtXcen4f5b0MUxV8B4VY35M0Sb10Mog1cA3yY2OLPxAsZy5kGcrAT7qEXN6
         Zexw==
X-Forwarded-Encrypted: i=1; AJvYcCXkHNEYPbad7mv1gaZrmn+jB60PC5BTjkqt0h3NdU2E8thzujQYmULN0CjGi0a+gJFYEFffcvagLJo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxvp+CJhFakwLmTGisYsMyynX3SsU+PL0RsciC+Y95xHzz9ph8e
	JS7C76eZ1l6JbnU+XMknruCNjgokF9hqxMNBvUiF90kVBlVh5v9KMK4t+X/92RdHpWY/zM2BzKt
	Lua3GSPoqnifQBfoDSW0yazGnUUTeaCaI6+TeT9KNlCm258jCOgWZoJ7NCfQFRbX2NvON
X-Gm-Gg: ASbGnctw4lxf/IjCPT/tgf9Gw6mbB2kHIO8MyoYFDRVOsSPy4xFOjN6JQal0YInu0YB
	ErY9iZyMa9NGPMSQQXyM4ZqyPPRlD4ro3OjoGPstkPlCdvH4thV7feMqayFS6lGytUkM7tSivQX
	rHyTU2opZDggxg3odpxIT9IKmnUe/PyJrpqiSASDsoJPZXKT0LsHkFOUMMciXWkbTfLF7LY28fM
	8uPEVf19/gO1MGQpmn9bzhw1XjNbnFHeJxcnoCXQ34gxFq1y76hi0pi8JPxeiPZpKPf0FkMua4s
	PwYHwl7naY+gfs0gPutu2v0ZbumY5Ht3lD6n413r1182L0CZPXfIPxA6PNPAPl2vOg==
X-Received: by 2002:a05:620a:22cb:b0:7d0:a873:41b6 with SMTP id af79cd13be357-7d0a87341eemr23248385a.13.1748602609018;
        Fri, 30 May 2025 03:56:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVhwGo6eIBUc8NIPWCq/VAYr79CpNK6ZT1bJU+Fx1YS9w2pL/7LMaola04s9DtuAsRXHuuOQ==
X-Received: by 2002:a05:620a:22cb:b0:7d0:a873:41b6 with SMTP id af79cd13be357-7d0a87341eemr23247285a.13.1748602608611;
        Fri, 30 May 2025 03:56:48 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d84f2bcsm306618166b.83.2025.05.30.03.56.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 03:56:47 -0700 (PDT)
Message-ID: <8972adb4-b6ae-4ea9-986a-32e59fe84c50@oss.qualcomm.com>
Date: Fri, 30 May 2025 12:56:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
 <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
 <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com>
 <CAMyL0qPd2HRv4nr2C9=5SgzSkuKO_1cfZbOUO2aUj3vPWnmJbA@mail.gmail.com>
 <41ac26a6-7a5a-4c11-b05c-9ce688ad1856@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <41ac26a6-7a5a-4c11-b05c-9ce688ad1856@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=68398ef1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=ra-v6aFW90cMH64V2wwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: -MwyRwea9C_R8ODXtv1jkEfeQWpHtc0Z
X-Proofpoint-GUID: -MwyRwea9C_R8ODXtv1jkEfeQWpHtc0Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA5MyBTYWx0ZWRfX3TN5CeLI931J
 3KOn+5nmP8c5DlZG983Op1pzOm0HrupWb28ecZ8Jf+olq+99BrWySA+TKM/wBTNU3pEPxsi2/mD
 f+I3hYpb7QJ2iv8k7fgHvp1FOQECQ1cwzPzES0nH7M8dCEpRrXUTF+yc9ZTIYjlPw9pPeMFR85v
 uIUhXItoZr02VDCkCXZD5rUSWyvJJC4i1nIfm1ByY1iCecyWScnNYgR34mM9iEsOGxfNVUO92dO
 0gfLcRqn4btdi7GNJjc1V3AVGdppvyfVBuS4ejcJtykBhBBSRo1Ue/vr23Br4x/AFsl+52TdSfQ
 xjrBfTKUruXV8RwRsHXDyVVhZC9ISE1TNUE0faGln6DXz+RgfYEYJ+LLBbk+KjR1wNzZ8Rim/iw
 Lrp2QkHYEE0z5BBMwPnOEtLCoKmFrVPc+hL473z+Wag0jw14n8s8j8LWbah5sAiPq16hf2g0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=929
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_035651_251937_0052027E 
X-CRM114-Status: GOOD (  18.72  )
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

T24gNS8zMC8yNSAxMjo1MCBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA1LzMwLzI1IDc6
MzggQU0sIE1yaW5tYXkgU2Fya2FyIHdyb3RlOgo+PiBPbiBUdWUsIE1heSAyNywgMjAyNSBhdCA0
OjA24oCvUE0gS29ucmFkIER5YmNpbwo+PiA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29t
PiB3cm90ZToKPj4+Cj4+PiBPbiA1LzI1LzI1IDM6MjkgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3Jv
dGU6Cj4+Pj4gT24gU3VuLCBNYXkgMjUsIDIwMjUgYXQgMTE6Mjc6MThBTSArMDUzMCwgTXJpbm1h
eSBTYXJrYXIgd3JvdGU6Cj4+Pj4+IEZyb206IE1yaW5tYXkgU2Fya2FyIDxtcmlubWF5LnNhcmth
ckBvc3MucXVhbGNvbW0uY29tPgo+Pj4+Pgo+Pj4+PiBUaGUgbWF4aW11bSBsaW5rIHNwZWVkIHdh
cyBwcmV2aW91c2x5IHJlc3RyaWN0ZWQgdG8gR2VuMyBkdWUgdG8gdGhlCj4+Pj4+IGFic2VuY2Ug
b2YgR2VuNCBlcXVhbGl6YXRpb24gc3VwcG9ydCBpbiB0aGUgZHJpdmVyLgo+Pj4+Pgo+Pj4+PiBB
ZGQgY2hhbmdlIHRvIHJlbW92ZSBtYXggbGluayBzcGVlZCBwcm9wZXJ0eSwgU2luY2UgR2VuNCBl
cXVhbGl6YXRpb24KPj4+Pj4gc3VwcG9ydCBoYXMgYWxyZWFkeSBiZWVuIGFkZGVkIGludG8gdGhl
IGRyaXZlci4KPj4+Pgo+Pj4+IEFzIEdlbjQgZXF1YWxpemF0aW9uIGlzIGFscmVhZHkgc3VwcG9y
dGVkIGJ5IHRoZSBYWVogZHJpdmVyIHJlbW92ZSB0aGUKPj4+PiBtYXgtbGluay1zcGVlZCBwcm9w
ZXJ0eS4KPj4+Pgo+Pj4+ICJBZGQgY2hhbmdlIHRvIHJlbW92ZSIgaXMgYSBiaXQgY2x1bXN5Lgo+
Pj4KPj4+IEknbSBtb3JlIHdvcnJpZWQgYWJvdXQgdGhpcyBub2RlIG5vdCBoYXZpbmcgdGhlc2Ug
Z2VuNCBlcSBzZXR0aW5ncwo+Pj4gKGkuZS4gdGhlIHBhcnQgdGFsa2luZyBhYm91dCBkcml2ZXIg
c3VwcG9ydCBsYW5kaW5nIGlzIHRydWUsIGJ1dCBpdCdzCj4+PiB1bnVzZWQgd2l0aG91dCB0aGUg
cHJlc2V0cyBiZWluZyBleHBsaWNpdGx5IGRlZmluZWQgaW4gZXEtcHJlc2V0cy0xNmd0cykKPj4+
Cj4+PiBLb25yYWQKPj4KPj4gSGkgS29ucmFkLAo+Pgo+PiBBY3R1YWxseSBzdGFiaWxpdHkgaXNz
dWUgd2FzIHJlc29sdmVkIGJ5IHRoaXMgcGF0Y2ggc2VyaWVzOgo+PiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1wY2kvMjAyNDA5MTEtcGNpLXFjb20tZ2VuNC1zdGFiaWxpdHktdjctMy03
NDNmNWMxZmQwMjdAbGluYXJvLm9yZy8KPj4gYW5kIEkgZG9uJ3QgdGhpbmsgd2UgbmVlZCB0byBk
ZWZpbmUgZXEtcHJlc2V0cy0xNmd0cyBmb3IgdGhpcy4KPiAKPiBPa2F5LCBzbyB0aGVyZSdzIG11
bHRpcGxlIHBhcnRzIHRvIGl0Li4KPiAKPiBJIHdhcyByZWZlcnJpbmcgdG8gdGhpcyBzZXJpZXMK
PiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAzMjgtcHJlc2V0X3Y2LXY5LTAt
MjJjZmEwNDkwNTE4QG9zcy5xdWFsY29tbS5jb20vCj4gCj4gUGxlYXNlIGNoZWNrIGlmIHlvdSBu
ZWVkIHRoaXMgYXMgd2VsbAoKSWYgbm90LCB3ZSBjYW4gZ2V0IHRoaXMgbWVyZ2VkIGFzLWlzCgpL
b25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
