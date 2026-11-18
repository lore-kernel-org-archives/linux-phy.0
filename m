Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8E2606A32C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 03:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Tp+kIHPW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=VvsUyW2m;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KPl/RSfP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=m0OouMlMut4RITaYAO54ZtW7wofBnE55fLjZx8OW2PM=; b=Tp+kIHPWnLpcLRIduxtkKJjMYU
	xOmycvMTz3l55w3MRspio5wyOylOxnz+WvTSOksL7dSwlRas9PvwBFmdh7cR0MuEjcQUdIZdC55N3
	TkU453HUEkLY5jWX4KNEmIt953Ih9tEdb+6/eheY3elExxDbDANcZ51UrfmzxSS2pmsgGjGjebF2f
	BfMzi9U5JYlC+yJr68A4hafVrKMkN3tAM8y9+NoZpv2y6gQeKqBo2/HpsqRnFlXnMpEr9LFtvvMlO
	Wczn/F51snbhpf+yzjNZtn03/1OaLbpoBzNKuCs/1ih7DkLC7hUtTGRYYljXoh+klnAXCFoSQOV+3
	kXRTTk1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTWO4-00000007dxF-49ck;
	Wed, 18 Nov 2026 03:31:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTWO1-00000007dwc-3iCK
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 03:31:07 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AI2V1Cv3121811
	for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 03:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DLrT5Mh7fC5h8PM28yHTHw+H7Tw5FCOseBcBKNYwgUk=; b=VvsUyW2mxCoem6Qz
	k52PYDF93mU2kFdVyPVt1c46WNx3vkyQPzJXLm6a+sOGs0D/nCe5RghCLYt4FoOP
	+iq29gOgHgSa7zsVGaLbmUEUCOLJfwL63S51QuTpO078sL+0L27+EliRUVhGXG51
	7zJHalL2eUH9FTib/3fEFpZmrM+LHG2cTOjxd5I/iKXIvtX73gy8rfRSougUgbc9
	BgoW8+coGFHqvj6HIw/lPh4eTL+ihAAPd7ervl3trCRFRd/n1H/qb2lhjqX3uRX9
	MjOVbCgoUY/vKZEdvjkyXlGFluNj84eYJ0uJYa5gNeE/NxUcfRQr2umUHfjfi9PS
	s79t7Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0yv9gy3a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 03:31:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2eaf3f829b3so4469235ad.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 19:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794972663; x=1795577463; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DLrT5Mh7fC5h8PM28yHTHw+H7Tw5FCOseBcBKNYwgUk=;
        b=KPl/RSfPjvzGwd7z02NnE0ZSAtF/QpIKaJV3u1XtOTPc2CTftVU1i9oAUYE7gfv6HJ
         3vu9NM9uYJZIugFtqi1khdTajbCBtB+t6g9f9XvddyZ3fKkX/d6eS9fGIPAv/PLP/AZN
         T1pZshLCFCS1k1Ab5COagq4I7KpDqFijAWiugfyEdQh3THr7ouzvypLe7ACWYXqu2nWJ
         8s8RM/RAxQ4pFO/Dvhq+vvQVUo4DXN9ZDisVGNtGiAkuLaVD08W+N8NSCg+f4rArsBnv
         r4AR8h5GKyNlKzryxbbWqfB+N32Wdcei+T3eXLV/ppT1ClLuc06YpSa7a2sb3h/P/Hrd
         qN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794972663; x=1795577463;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DLrT5Mh7fC5h8PM28yHTHw+H7Tw5FCOseBcBKNYwgUk=;
        b=cVUP5eiPwJ6P9YOZIAbFaD5LJmDjecTCetEdkP/TG9xOqMWVYisRy9aGGEO+khyDfw
         ywLSOQS2RSpWqqAEWM/AZ8R5MO2ZaMh+V3YKHVv7wTMwSpOjb4/lzpL/ITf9Aa5ZgZS7
         XrBT3utawm+hHN2A86eQKSCLLSZQwNStHucprmcvaCeO7cafAPjaL0nBz1SbF/Psn/Iv
         6gYSxASmUGw4KAdrlgBZPCpf/weUjjoIOMfa6KvgtX4XChOptsIanjqsL4MS4A7mXgld
         tLT3SZ7/fRpPgHIUlI30P+ezILR59AWA7LUDbzmfjCYajXj0PQsS2/SfdlY/9ZytTbE/
         91Cw==
X-Forwarded-Encrypted: i=1; AL+hErFqxAzUca0Yy3a350iLc9zWOum3lQfogJxXXLfo2tN8QonX3o1s6/RCcbiF2I99Z7iJxxoA05Pz85c=@lists.infradead.org
X-Gm-Message-State: APuU4Z/c7dnmYiOPwdKnIpE5opT96RumR4Pbo8eUorapOicaCCR63pKq
	AiIM3xlrQrdi3mx4dPYXZg/bcJMsYPKn9Pj0rBU1wSWqVV9wybwp4/hopX6X+Ki1GHwNUpYnnou
	7QHRHZQ0kNp3TeWMSscP00+PQMh/yq7tiZwX+F6dpz+wvUjuuwv00MU9FjFRsBEFT/5cuD9Ed4M
	i/
X-Gm-Gg: AZFdTZeKGNk3cwJQHscTpDYA3BkHvUGU/HBFuCo4hzVLMvQ0JhwnyIFdfbiTQXlbYX7
	D9i86WC0vcKQ+Lr4BDwMDIb139ALw41j0ZBJU02g/IZ1ADaj/S1UxB46IcF7EWto5Z64XHdsfvU
	WOK3IR7HjF+TGMZck5Bw3tcUN6nDfuWUgIqEah0bkO3KgcJPLG0b01lxfG4mInMbjfJ4KaeC2AE
	0SHEjXfOi0MBk5pieIpDJV/w1vIkdN+whD4r6V84fftK0aGThFM+9BE23zJoTGc9mFcGPO2q5rs
	7aFLAAvUqHW2hJ0k51AKSWw1vaCRZwXy1BMMPxv3STlm0XNo7HR8fI1j0Ia7H6z6UZcJrWiCNgl
	ht2BruWeVip3id7t7MPqfJ4N88AGNyDX/heJDoK8i1aS8p+LUi2uvhKveJjAJYJPoCyXnheXZJ6
	5OqwsJHn4=
X-Received: by 2002:a17:903:1aab:b0:2ed:42d5:e682 with SMTP id d9443c01a7336-2eff751f06amr11721445ad.41.1794972663149;
        Tue, 17 Nov 2026 19:31:03 -0800 (PST)
X-Received: by 2002:a17:903:1aab:b0:2ed:42d5:e682 with SMTP id d9443c01a7336-2eff751f06amr11721145ad.41.1794972662720;
        Tue, 17 Nov 2026 19:31:02 -0800 (PST)
Received: from [10.218.42.145] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eff61162d0sm5287935ad.20.2026.11.17.19.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2026 19:31:02 -0800 (PST)
Message-ID: <1844d833-caa5-4a35-a601-2da1700c0d9e@oss.qualcomm.com>
Date: Wed, 18 Nov 2026 09:00:56 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 qcs8300 16 GT/s PHY
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
 <20261019-monaco_ep-v2-1-852cb9f5d012@oss.qualcomm.com>
 <avWZJr2eIE9KrV77@parshuram>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <avWZJr2eIE9KrV77@parshuram>
X-Proofpoint-GUID: WFsIwjc0qZAnShDhCylwuAEIDOFhLTr8
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDAxMyBTYWx0ZWRfX/gVKrxibsKRg
 EAlb/i8lbVctjXgm8oUW37eDmptMlWFWtBsmztAGpJ9DL89sz2RNJGE8FyycZ543dYIwYeKVkCg
 bn2RjR6ul2Vre8Zx3l/O6tMfaVziT6w=
X-Proofpoint-ORIG-GUID: WFsIwjc0qZAnShDhCylwuAEIDOFhLTr8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDAxMyBTYWx0ZWRfXwgaM3jXhfkO9
 yA1Wb7TwNkqrDNdSpIWiNX2eFcf3imcA3buszQjyGASLpa/9IuDbKxz663l04HdJkG2skgCC4vg
 nWVsb5k9bzHqn8Dhq3+J3VXq9unPR/2YF4xBUfuxd2c66x28L44byZ2eRuuRD98fGJ9Cwg5hcB6
 mqoZkesgk8AoXSnQhjhX0BfqVgp2MUBJ22WWtvsfE0QjiVgr+DrBZYKvNbxMFPnp5eLAJhFPaa1
 cmNziSkmBSMT5tZb4QCVxd+D6+iaUwdVIVDrxVAOz829skOkLW6ox7eeOsrCAYPPwctRTh4SQ4A
 91bYOLHzndzWQhdCmtg4j+rkZ7k3cz2H8sO/fMeMF6o8V94eZAP/wUM4hhCoKiGwnI4y+HT+ROT
 HhKDA0ea6wWkAyCd7jrqlC5FTfjyl+YU3NNHp4lut5LyeSmGbL0P3X9OdtTkOi/IH+9QZNi2Vo1
 ivK1dW7O6pRROU0TQ/g==
X-Authority-Analysis: v=2.4 cv=RYIFmFtv c=1 sm=1 tr=0 ts=6afd1bf8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UoCkNwF0umAWgb14yFsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_01,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 adultscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_193106_039272_EB07F4D5 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgpPbiAxMS8xMi8yMDI2IDQ6MTcgUE0sIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTktMTAtMjYs
IDE0OjU1LCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+PiBUaGUgUUNTODMwMCAx
NiBHVC9zIHg0IFFNUCBQQ0llIFBIWSB3YXMgcHJldmlvdXNseSBkZXNjcmliZWQgdXNpbmcgb25s
eQo+PiB0aGUgcWNvbSxzYTg3NzVwLXFtcC1nZW40eDQtcGNpZS1waHkgY29tcGF0aWJsZSwgc2lu
Y2Ugbm8gUUNTODMwMC1zcGVjaWZpYwo+PiBjb21wYXRpYmxlIGV4aXN0ZWQgZm9yIHRoaXMgUEhZ
LiBUaGlzIHdhcyBhIG1pc3Rha2UsIGFzIGl0IGxlZnQgdGhlIFBIWQo+PiB1bmRvY3VtZW50ZWQg
YXMgUUNTODMwMCBoYXJkd2FyZSBhbmQgaW5kaXN0aW5ndWlzaGFibGUgZnJvbSBTQTg3NzVQIGlu
Cj4+IHRoZSBiaW5kaW5nLgo+Pgo+PiBDb3JyZWN0IHRoaXMgYnkgZG9jdW1lbnRpbmcgYSBkZWRp
Y2F0ZWQKPj4gInFjb20scWNzODMwMC1xbXAtZ2VuNHg0LXBjaWUtcGh5IiBjb21wYXRpYmxlLCB3
aXRoCj4+ICJxY29tLHNhODc3NXAtcW1wLWdlbjR4NC1wY2llLXBoeSIgbGlzdGVkIGFzIGl0cyBm
YWxsYmFjayBjb21wYXRpYmxlLgo+IFRoaXMgZmFpbHMgdG8gYXBwbHkgZm9yIG1lIG9uIHBoeS9u
ZXh0LiBQbGVhc2UgcmViYXNlClNlbnQgVjMgYWZ0ZXIgcmViYXNpbmcgaXRbMV0uCgpbMV3CoFtQ
QVRDSCB2MyAwLzZdIFBDSTogcWNvbS1lcDogQWRkIFBDSWUgRW5kcG9pbnQgc3VwcG9ydCBmb3Ig
TW9uYWNvIC0KS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydQo8aHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjYxMTE0LW1vbmFjb19lcC12My0wLTdmZTIyN2NkZmFjMEBvc3MucXVhbGNvbW0u
Y29tLz4KCi0gS3Jpc2huYSBDaGFpdGFueWEuCj4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
