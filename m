Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CAE606A32C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 15:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0hjqnjgZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=lWclrFBy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=YNS5LkAm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3dKFxn7zYE7MXL6XUJqydaBeTLx0PdXxLy9tznLLWo4=; b=0hjqnjgZdLrYkESkpO8RCecjzV
	VV5dVeIXFnPknEMM8VZVXGh1BQr1H9M5hDBVV3oieTmQEam1oQuRThj1ez1uiNC7c9zlazhsxtegm
	bM2mGx8Htg6pI3fc7mT5F3JkqsA8NjPK1dCelGelQV7VF57oA3bCJ2Ih82BgPHOc64Edh1L3TPBWj
	y6bq5jiGvSJfvO97gVKhz9Q1FuaN6qd0cP9WNEhbAJzBPK7w6cT1hABEdPEEVE4wr8EaiyokQ8kXz
	1iiBtGX/I+P8JqtPMDTgggrEP+nG9V8Nb3tNSWxTjIcppQWGUQ9bRynm3UYvQt9uozBbT/38y4Dj6
	bc88T23g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWayt-0000000DeQK-0qn4;
	Thu, 26 Nov 2026 15:01:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWayq-0000000DePn-2ZWC
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 15:01:49 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQEVvHW1022130
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 15:01:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BCBvJWUUzh4EABV/c2ZfxvfD28hjPtQ33YkZR/isC78=; b=lWclrFBylEkYJmnz
	uQqsbH3qxDtNpVUljF7B2i5IowP3/Oz5hHlLqH2U8Iyjwo1ACDZJplStp2qvZkyY
	zBA9II2Mz9JjOZQGYlv+5Z6DuuuBpaanwklVZ6x7e/++ESCfR1/Laypp6cMYICX3
	ajwQ4hQXebB8lLxGlADQnuWmKjmzAsREYHp7ecQW79cKIGkSlndiYEFMaDmRicVL
	TcqeI8UcjjWNIoTakZqg3iJTrQlVoIjWRbaXZ1A0PAZhogBCX9AOnz902WUl8VWR
	Lk46w7/BeCv5eKvATozGYNgNfetjve280PVTyMjT7zXWV1v2iZX+NFXNEPOAy4cn
	VJvQ2g==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6gne1h48-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 15:01:45 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ecba171914so327058e0c.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 07:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795705305; x=1796310105; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BCBvJWUUzh4EABV/c2ZfxvfD28hjPtQ33YkZR/isC78=;
        b=YNS5LkAm0aVtxzdDzcKXGGZHUh50G2+OoRKkNKb/C5JhWEvFHm5QFFEpsHkVcgFCst
         jSpx8cknsr6Z4au5cB68mioJtcCMIp5EJmF2wvC1iSDtIVcddyLzs0snzJyrAJC4uNkL
         +dUEzyof6tjiCzcDanehY/PXUJfo9RBZT7YBs3yAMax4547FiGdDP6cu+aBKkI1wZMDT
         yluRzThfRLZEYulqChUXxq/Qi0nYFDDk4rSJjtL+Ah5gWgknFEttChglQtZe0RYnIezm
         I5De2W5EZJYrwnTvR4+EGsfqku3OlESUwgj9qL2v6l0QzNK8G9hehSgOa35ApkMTlLyb
         RMhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795705305; x=1796310105;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BCBvJWUUzh4EABV/c2ZfxvfD28hjPtQ33YkZR/isC78=;
        b=kVIIrM1n849TyvsvJ9cdr7dZ+4u/8EfF464lFCInSljP04g95/Hzqk5LIhDX762Yl7
         xDZagKyhzwC3cJcsIrG3pHqtVTkmJsS1Eu+f+TNgBMUpiLzsk9y84SwCfijROcvjZKCA
         f3GfShQ95reKcUH1IRzgF5HHmbudJZhFrf0ZBAOxArYdJ5MZzPZmu4K28h7sRxptb9T3
         rBukZf0t92gtXPajo7uAZKYJDS51Hq3S16J5lkiHbl/4sDZHCzgo99LzG3N2w0orvWbY
         2lpEKnXwES8qmKKCa3mJJvPN9IfrkY7gh66U29entnWhxoZ+ZY90UFBrUF96bzVhS3Me
         o2Pw==
X-Forwarded-Encrypted: i=1; AL+hErHrI1PzUSECgrD0BEl/I5XAwBQcZkUHSTCSF3F2hxJCN3X3NGepA7XnPF0mPueMwB8SdCktPapFSQY=@lists.infradead.org
X-Gm-Message-State: APuU4Z/cSBsDJNNwqh0l/5wwKs5IbAPd85xfQUUHz2R5H0meHFxdch+V
	Xo/R41zVdwzc1UZ/browudEENfTAI2wgVhIan0fLfP51k7bxqMiN3DsuIC2ZaeS5nWSzAUSQdVZ
	tT/jpqGd+G/ZqlOOQFWv9N3qSaMzZU56fxl3/xAHhkd5ZYAThFmC0zUD2K0joVB3PZSgO
X-Gm-Gg: AZFdTZcbTFilquF+Q9Vq3eWgY4PuSyhwBQg+BOI7RfqlHqQ3Xg94SJoPj16K5nwkwru
	F5cGc6W3Lfy2A+zdwQiFpCDx0njlYCm93W073NtblQxxZObePeHtBinqT6OhzoqXOPG5qvAtW11
	5Q/HoebccyoY3cY7gLj2h8P425gsbCzbGGQ6+Agyudcu5JYl9jCUXAt9t0eVEFdrWQJ+0RLucGA
	qr28D69Seo0KK6ILrLF2xDZQda8XPVvcTtZe4C3m6EKyHUkfO2042MKWiOhso3Jou3+EQRjlcKt
	SQVfh3zhtW49sU0buFEYhBtEmWg6qhwlR4EYC6PiAsL4IOwoAZSACmrXYBtq/i3BHs6OjAIplMF
	UIu+wMt5/rskIVxdWFKdScsQi4XUNfAfoklzP/mPtwABBw3BPv63fUhCndCevR4FwCbTqTnc=
X-Received: by 2002:a05:6122:264d:b0:5e6:589b:eeec with SMTP id 71dfb90a1353d-5ee8af4a6c4mr13275374e0c.5.1795705304726;
        Thu, 26 Nov 2026 07:01:44 -0800 (PST)
X-Received: by 2002:a05:6122:264d:b0:5e6:589b:eeec with SMTP id 71dfb90a1353d-5ee8af4a6c4mr13275286e0c.5.1795705304183;
        Thu, 26 Nov 2026 07:01:44 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513acff65bsm790932366b.4.2026.11.26.07.01.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2026 07:01:43 -0800 (PST)
Message-ID: <00422583-53fb-47a7-bcfc-f517b84283c2@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 16:01:39 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/11] drm/msm/dpu: Fix DSI tear interrupts broken by
 adding INTF_9 and INTF_10
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-6-e3d3bf0e2c49@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-6-e3d3bf0e2c49@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XpVvqlF9 c=1 sm=1 tr=0 ts=6b0849d9 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=-NiRQLekuLvWmI5UBGoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA1OCBTYWx0ZWRfX0tybwgGulqOZ
 xp0d4H2mLrUbdT0sPJrMa8JyThegb2L5j0g2mHSn8maJhEi9044HgWVevPk5UPbDIPz5gS9/VOI
 aj8+g0GRAjKTgUPSmFxbW9Kk871BIKgejYLRjlTq9/dmuWNoUmLG9G7l1lrTzALAn+0XgzH4mGz
 FfaON+Iqk924SFqBMYgP5+iCIhqOGhqn2gm0XA1lzGeUCFt5DfaIC0xirIpUD8OEOGcHcersGpb
 Qy5+ACl6rSoJ1DQCTL8etrwt4PeJJOZwJeCMOlsP6F5pACQ4wyuVxQWleXVvNU9uMDd/qRhkqtE
 n8r58y/PExURPsSXJmKtGVBv9M2iuUfucb1/9abZz5hXdaq02OjIhmggTEpQL1IZj/uEcCIozGO
 Gc/IG1ZkSPkFtZpPolkNp3uhtwFL6PMftFQz9NasGlLof6WUQrn3yMDwp/YQ0lcpPwncIeHpWwJ
 X5nf/yGHpl4n+5wvCAA==
X-Proofpoint-GUID: v8-a-0CSkicZLLzUwxDOCjWqU4pmPfoP
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA1OCBTYWx0ZWRfX1fWXABY8c5Y+
 Sy0lMVbHXo3YSilbQSre6EwuSUqZij0Y1q75SAo+NjEQQB1o5L9AEaoBduD7Tgr7/VevARp74x3
 bX8FEvfMVobm16WdVOfTOkQjPKFgMOs=
X-Proofpoint-ORIG-GUID: v8-a-0CSkicZLLzUwxDOCjWqU4pmPfoP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_03,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_070148_768770_BB48AE1E 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMTYvMjYgMjoxNiBQTSwgTmFiaWdlIEFhbGEgd3JvdGU6Cj4gTm9yZCByZXF1aXJlcyBJ
TlRGXzkgYW5kIElOVEZfMTAuIEhvd2V2ZXIsIGVudW0gZHB1X2h3X2ludHJfcmVnIHJlbGllcwo+
IG9uIGFsbCBNRFBfSU5URm5fSU5UUiBlbnRyaWVzIGJlaW5nIHNlcXVlbnRpYWwg4oCUIE1EUF9J
TlRGbl9JTlRSKCkgbWFjcm8KPiBjb21wdXRlcyB0aGUgaW50ZXJydXB0IGluZGV4IGFzIE1EUF9J
TlRGMF9JTlRSICsgKGludGYgLSBJTlRGXzApLgo+IEFwcGVuZGluZyBJTlRGXzkgYW5kIElOVEZf
MTAgYWZ0ZXIgdGhlIHRlYXIgZW50cmllcyB3b3VsZCBicmVhayB0aGlzCj4gYXNzdW1wdGlvbiwg
Y2F1c2luZyBEU0kgdGVhciBpbnRlcnJ1cHRzIG9uIGV4aXN0aW5nIHBsYXRmb3JtcyB0byBtYXAg
dG8KPiB3cm9uZyBpbnRlcnJ1cHQgcmVnaXN0ZXJzLgo+IAo+IEZpeCB0aGlzIGJ5IGluc2VydGlu
ZyBNRFBfSU5URjlfSU5UUiBhbmQgTURQX0lOVEYxMF9JTlRSIGJlZm9yZQo+IE1EUF9JTlRGMV9U
RUFSX0lOVFIgYW5kIE1EUF9JTlRGMl9URUFSX0lOVFIsIGtlZXBpbmcgdGhlIHNlcXVlbnRpYWwK
PiBibG9jayBpbnRhY3QuIEFkZCB0aGUgY29ycmVzcG9uZGluZyByZWdpc3RlciBlbnRyaWVzIHRv
Cj4gZHB1X2ludHJfc2V0Xzd4eHggYW5kIGRwdV9pbnRyX3NldF8xM3h4Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1haGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IE5hYmlnZSBBYWxhIDxuYWJpZ2UuYWFsYUBvc3MucXVhbGNvbW0uY29tPgo+IC0t
LQoKVGhlIHN1YmplY3Qgc2hvdWxkIGJlIG1vcmUgYWxvbmcgdGhlIGxpbmVzIG9mICJhZGQgbWlz
c2luZyBJTlRGOS8xMAppbnRlcnJ1cHRzIi4gVGhlbiwgdGhlIGNvbW1pdCBtZXNzYWdlIHNob3Vs
ZCBleHBsYWluIHRoZSByZWFzb25pbmcKYW5kIGVmZmVjdC4KCktvbnJhZAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
