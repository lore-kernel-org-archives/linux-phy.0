Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1075CC5B549
	for <linux-phy@archiver.kernel.org>; Fri, 30 May 2025 10:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Fy79z42ohWEaeIXREK3vI6tAlFMVanydyq+gS1lFNc=; b=lc5UBqaILs4m4a
	MiXUPe5j75jqL4EH+Dm6ZIlHPLM7FZftFalV0+95UkiTQavadzKMAKJzqvR58SU01yP+UArdSkJac
	3t1ZBGPYQ55/DKC+9upo7fo40SRmZyQ3G4tLXIMktTcHFxUDV6E8XcTc4INlqyv8zD+jav1zImsOf
	B/tn/Z5ghi2cp9rkVf28DD7EQu+Cf8To1Ihuph2I5I6bfHoEABIkQeTbolYv+7c/JjleyrLTyn24q
	shIw1BhPST3DrAbPxw9KMwq776m/mYukOe8QKu5QDvf0yA/xd3Wu2345KFYmk5jyIEoda4W0+GrPh
	RRs8OnvCl6vMxVCL/ZFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKxKK-00000000KhZ-2YM6;
	Fri, 30 May 2025 10:51:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKxK8-00000000Kfu-3DBv
	for linux-phy@lists.infradead.org;
	Fri, 30 May 2025 10:50:54 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54U1Auml008016
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 10:50:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z4rXk9vhivFfpVyuWsaM+pN+1TEWBMRApv34rh/4E78=; b=MPIHTm7PITR2O4hS
	Q+XdeINvaPtbSaEOMtecNAD9Gyn89cFndVtKkKnLV+RUz1i3CCPiUAVcURUtIYSY
	cuDqGBa03VOCbhXvDIFBlo5oprqCkqeB5RraHlLwIqTe6DXRYnJ33aYJOiKvnyfU
	gqdBQNhTBXNEgLKlFkMwfcfTC4B8BsO7kD8pNcDJTbiGZuwwQms4YysZlm1Oq+aB
	yETNHd43t5EDCk8OEwxPMZjfnj5SC08StB7TfhsfGQNq4ZQRpwd28zkCGJhZ0cSm
	9OGJflJupggL1iEtUp47Iu51CtY/lCBj9ahJ2R1uDOPdcenVOUfkKUoqxus9Xc2v
	DncS+Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46whuf94sn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 10:50:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09b74dc4bso40301685a.2
        for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 03:50:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748602249; x=1749207049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z4rXk9vhivFfpVyuWsaM+pN+1TEWBMRApv34rh/4E78=;
        b=mJDUNRVtaFlE1elq9jAK65mNToKmWDHbzdYiOguE+xbW2s9CyqOIq8Zxid1nJUfyxQ
         V7XAcvh0RZuDkm/FwIbY38+Hn6RK0KRJQWnBqCjcW060lTrXE3iGo1bvZ8LHm1EDSCKQ
         uTR+k8EJ7fJUcKIVOCHD6vhshOKd3c+qnZMze/Tv8Pd2OLrpxRBvNYYbyw47UXo2L3qL
         t8LJSAORQtLv+bkGpFPApWJIeowRY/2nb2Lv04cK/AOgVKNgIIOeEVaitXE6er5yf+Nr
         xCAnGhhYZIUBzWQSaoFFjNpZinjwiWFuws8AfBJ4tun1IcMbNx/SOIZ8MxIto4irg28v
         dUBg==
X-Forwarded-Encrypted: i=1; AJvYcCVFUn7Yc3X6Q+2RctaUQq7cC6LvI+iXF0UwheKDw9EToWZtwOp7SAsgagrit2iGLWwDpzx+socXUAk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbjSog7Pu2OnEvYHYeVlGt+NAhtqD9eIgq663PYRxgf0IuOhqZ
	jbbj6eClZT3dWbMrT11v/NmBEPw6RjNgz4THttvqCaSqSqYML1FOXmc8JXDxaW+WfN93MndcPBs
	AlAwUZiWxTF+opOd0e8zuyKla0Es64fZxS+u7Iq0BEYcyRrtbtEc9bnth1LcUL/znFZi8
X-Gm-Gg: ASbGncvGMeGQkLH+feFMrOEdW5hdaFubQ/rcQqdfRPTewvTiTT1nDeZwvepz//riHcm
	268PrkpQHBZK1LStAv0RBbhwnl6ZLVM1Z1skqNH+LXIYn3gx6PldGEx+HvH40Z7upkXW6C8IMFg
	Xe2wo2kriTv43Qasc6/GZ1YGlpRMYlZomJKquBtFrTeKIyLs0baNvlPvUMKLmUbDPoduxx/Fuu3
	QJiTGr/Zo1T3zrpfB37VltxY6RWRE84+MiXZDsMbkKyC7RH5GuzSn/kHvJT+/LNxAvVVhKkkEOV
	6GHeHT0Gu4zk0JYHAqbeAul+zRNPNCohr9XJRZtgJVjOwyFiUTPErHAXhOkF5smiVg==
X-Received: by 2002:a05:620a:3181:b0:7d0:a01f:fb88 with SMTP id af79cd13be357-7d0a3d4c675mr106125985a.3.1748602249494;
        Fri, 30 May 2025 03:50:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJYC21TQ5zDddZNnJ9XnAJWlOSBf5rU1kM5wJE04vL9iTjxKtcyZldXI0lj/F+I9ByGJY+gw==
X-Received: by 2002:a05:620a:3181:b0:7d0:a01f:fb88 with SMTP id af79cd13be357-7d0a3d4c675mr106122785a.3.1748602249000;
        Fri, 30 May 2025 03:50:49 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada6ad39479sm303640366b.124.2025.05.30.03.50.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 03:50:48 -0700 (PDT)
Message-ID: <41ac26a6-7a5a-4c11-b05c-9ce688ad1856@oss.qualcomm.com>
Date: Fri, 30 May 2025 12:50:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMyL0qPd2HRv4nr2C9=5SgzSkuKO_1cfZbOUO2aUj3vPWnmJbA@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=OslPyz/t c=1 sm=1 tr=0 ts=68398d8a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=x3Y3bNPYzO7REJDPTQEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: r4z8-UjMZGFv0V2aB5mVhWWEBFJoTlkB
X-Proofpoint-GUID: r4z8-UjMZGFv0V2aB5mVhWWEBFJoTlkB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA5MyBTYWx0ZWRfX4eKI0kH4IrYK
 f1QN4zllCXGnBf/HwhX9S00rmdYbG5Kp+I1x3bWB6BjVtcWShdNbj2ExePwkBV4Y4S3rDBUhNmy
 nFFevEnh0yQ4VaIlnHBK2OI2KCU6d/Pkcgm0Tf35UUAo0Zwid0X+In5+O2vv7DdIsp7WJ6DBR3r
 RE9mKhhi6Bkyb1tccqBMtH/az6CfnHDirdIPT3/5vkawGfqZcK9QqEb3jtBrOgd8X6/Muc9BPLE
 g1a5hq7z3WnRJnoElgdqqPD9ogmvr0himWr/gRe5ASmviUfWhbcQcIgsvBc2CQmZ/UESe9CfhGN
 aas1OkB9izn/rfnV/KdlqDRjGPSl/IvXFCmcx4E2uLVRY0S75uUm7xqvWunw3sL+ZSdj/fk9ug1
 qHypvStP5gz3Jh725l25Je1/NIyZieLIVP6wPddcgDV3g+ps13cD2dOGviblGIXJHJFrD7jU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 mlxlogscore=933 adultscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_035052_829874_10217311 
X-CRM114-Status: GOOD (  17.69  )
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

T24gNS8zMC8yNSA3OjM4IEFNLCBNcmlubWF5IFNhcmthciB3cm90ZToKPiBPbiBUdWUsIE1heSAy
NywgMjAyNSBhdCA0OjA24oCvUE0gS29ucmFkIER5YmNpbwo+IDxrb25yYWQuZHliY2lvQG9zcy5x
dWFsY29tbS5jb20+IHdyb3RlOgo+Pgo+PiBPbiA1LzI1LzI1IDM6MjkgUE0sIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4+PiBPbiBTdW4sIE1heSAyNSwgMjAyNSBhdCAxMToyNzoxOEFNICswNTMw
LCBNcmlubWF5IFNhcmthciB3cm90ZToKPj4+PiBGcm9tOiBNcmlubWF5IFNhcmthciA8bXJpbm1h
eS5zYXJrYXJAb3NzLnF1YWxjb21tLmNvbT4KPj4+Pgo+Pj4+IFRoZSBtYXhpbXVtIGxpbmsgc3Bl
ZWQgd2FzIHByZXZpb3VzbHkgcmVzdHJpY3RlZCB0byBHZW4zIGR1ZSB0byB0aGUKPj4+PiBhYnNl
bmNlIG9mIEdlbjQgZXF1YWxpemF0aW9uIHN1cHBvcnQgaW4gdGhlIGRyaXZlci4KPj4+Pgo+Pj4+
IEFkZCBjaGFuZ2UgdG8gcmVtb3ZlIG1heCBsaW5rIHNwZWVkIHByb3BlcnR5LCBTaW5jZSBHZW40
IGVxdWFsaXphdGlvbgo+Pj4+IHN1cHBvcnQgaGFzIGFscmVhZHkgYmVlbiBhZGRlZCBpbnRvIHRo
ZSBkcml2ZXIuCj4+Pgo+Pj4gQXMgR2VuNCBlcXVhbGl6YXRpb24gaXMgYWxyZWFkeSBzdXBwb3J0
ZWQgYnkgdGhlIFhZWiBkcml2ZXIgcmVtb3ZlIHRoZQo+Pj4gbWF4LWxpbmstc3BlZWQgcHJvcGVy
dHkuCj4+Pgo+Pj4gIkFkZCBjaGFuZ2UgdG8gcmVtb3ZlIiBpcyBhIGJpdCBjbHVtc3kuCj4+Cj4+
IEknbSBtb3JlIHdvcnJpZWQgYWJvdXQgdGhpcyBub2RlIG5vdCBoYXZpbmcgdGhlc2UgZ2VuNCBl
cSBzZXR0aW5ncwo+PiAoaS5lLiB0aGUgcGFydCB0YWxraW5nIGFib3V0IGRyaXZlciBzdXBwb3J0
IGxhbmRpbmcgaXMgdHJ1ZSwgYnV0IGl0J3MKPj4gdW51c2VkIHdpdGhvdXQgdGhlIHByZXNldHMg
YmVpbmcgZXhwbGljaXRseSBkZWZpbmVkIGluIGVxLXByZXNldHMtMTZndHMpCj4+Cj4+IEtvbnJh
ZAo+IAo+IEhpIEtvbnJhZCwKPiAKPiBBY3R1YWxseSBzdGFiaWxpdHkgaXNzdWUgd2FzIHJlc29s
dmVkIGJ5IHRoaXMgcGF0Y2ggc2VyaWVzOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXBjaS8yMDI0MDkxMS1wY2ktcWNvbS1nZW40LXN0YWJpbGl0eS12Ny0zLTc0M2Y1YzFmZDAyN0Bs
aW5hcm8ub3JnLwo+IGFuZCBJIGRvbid0IHRoaW5rIHdlIG5lZWQgdG8gZGVmaW5lIGVxLXByZXNl
dHMtMTZndHMgZm9yIHRoaXMuCgpPa2F5LCBzbyB0aGVyZSdzIG11bHRpcGxlIHBhcnRzIHRvIGl0
Li4KCkkgd2FzIHJlZmVycmluZyB0byB0aGlzIHNlcmllcwoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjUwMzI4LXByZXNldF92Ni12OS0wLTIyY2ZhMDQ5MDUxOEBvc3MucXVhbGNvbW0u
Y29tLwoKUGxlYXNlIGNoZWNrIGlmIHlvdSBuZWVkIHRoaXMgYXMgd2VsbAoKS29ucmFkCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
