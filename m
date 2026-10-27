Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F664606A33D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 04:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=paDJhrMb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=EI3o1ZeF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Onu5iBAd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sKAzx21GgUezpB/cQfqCmUe/bdkWo5exwZuDgXmhEWo=; b=paDJhrMb7cQtJMgEudE9VJmy2c
	gUKlKCJADfqj9U4GRyhBrLI5Y7kgS/mo6omCHFC2w17vgTGCl/NPwzaa51OWZQkl+UwGNW2CXIksb
	wmRG73OYY8b4TsRwnEiHYL5lPXkGj2bhtzs16SS1br+z0qRyswN5yhY51m9wRFXlUefzA+3ZipBNo
	YM0sRJ8D/IuvqWWOXgCcv1YMmRW0GH/KEBtszWEUmJDPo+LhR1P59bji0GpD83fVg6R3VkNV7uciZ
	q2cmUR9l1HSd/MKaGFMCzyBnN6VZIn0KlCGIzk7pr20OzrARhgAACTjAb0AlJJsOpK6E5fOamAmM0
	cFsZva4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYU5-00000003jKj-00KT;
	Tue, 27 Oct 2026 04:08:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYU1-00000003jKM-40fH
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 04:08:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69R2F5Xh1421286
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:08:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RmQEj47q7VxsFN0LFghrtpu9Pl7/orbdB4gw0OrEDYU=; b=EI3o1ZeF5MDC+pYX
	VaemFAd4mZGQUeQXCmhGHfBbomSWN9sXVjW7HWZq289jFJ4NmrY1kmj50tTCmc1L
	pR403LTE3foQ5tD5UJgRs0MPIZryrCYtIWpayVukEt+rHJu2jgZIozdarvKxTXF+
	rjZoSOXb3CkoO6ARlnUc9PPBeYdyQHOGFcyPKhp1UWCWN2T2dEZdmmtiVrMqV7fa
	eri7SSoZUszj1OqZYB5Te+gHoz7aotwmIZfgp6O8zqWx5Bu+hvdsLIyJsCqJb5P2
	J+j2WNMvGPu3+dht4i8daLwDYPAZlT5OvfoKf6jnOGYm8uCuMFYPSernMlVZE5+c
	YRjgcA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hj4sf3ntk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:08:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-89e6ddd4554so2836317b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 21:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793074099; x=1793678899; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RmQEj47q7VxsFN0LFghrtpu9Pl7/orbdB4gw0OrEDYU=;
        b=Onu5iBAddIFwW29cpFTEiDdQlJT53ius/+VWDVvDfQSnyi53Q0QtsTiZ+7VIFMsD92
         eziPATMAFJm1REIZYESmKyP9oW7Y7gK1amBLvUw7d857EA2ANtwS19wrjc6vXzVPVvnE
         LPfwdnswy3l3sHVknCSZVWjBo8sIzKvJsviUnGQ1MtuBz+JIBDpbCFGuxP0lGh0o41z5
         AWNyPnAMIrhZTraOYiCqZvTGOAkpt0BYutR9MAwVji/vkZ+IdfFgNHNSzs/1Rkys6hRy
         YopqerzWhpwBl2zsh9QRVy+P6agT14LxFoOLT0o7/iYbPbPpMsLE39i1BbH3aoVdTf1Z
         dOFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793074099; x=1793678899;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RmQEj47q7VxsFN0LFghrtpu9Pl7/orbdB4gw0OrEDYU=;
        b=q9wM7oA6HTiMfwVy5/yEfIBjTLlp1dlrMb+BMOE1QeXYlfENl+1KePMz/TvD27f39g
         F4YoNtGVk83xlljjjNSchzajsULna3AEtnUhovY6CFLE+TV3GBhTyOjnAGy5p+hr1jNp
         ut5dLhk+xns5kPJtIUeZqYlH+QJuJiUlurKXkGQW0/0fAXbKT2GKymOM4Kbh8UFqI9z5
         dfPPeHbYV5PwKJ6egaKt3mTBvxRTtvO3y1QrvIjwc75D+3b7FLHnneiHs2GMNqB5vUZh
         PfLyw2FUiuPfsfEEJG3adeRs/I7cRzq+XskXcdQJAGhSRra84lPxuydLXBlUiVx6CENc
         pamw==
X-Forwarded-Encrypted: i=1; AKwUvByhSLDg2akyBkCvz93p2kKWfrEk9vVuFwOZgMCEg4ozJzQMw4TP6LYSAk/SEC0R5dxhgcaNG49t6lI=@lists.infradead.org
X-Gm-Message-State: AFq9FYK3qsY4Nv/LB5e7LfgKDbAayIJm9Xls/eN7jPx1OyGHq9fUzQUC
	YRw91tLzKjhsbfamRN7HtYRzx9xuIllGZXcUv35otpASkz0ABQITqyTw+SVjvcRfNHp2pxRHmkp
	SFiFKCiTUd/+W3N/N6/LanYBOdZH401HbcKW/RtM8+Lni9dKJ+kJuYK2KmBwQzOVELd1B
X-Gm-Gg: AYBFou33dUSu18I1U7s64H6SQDUMBlVwtb2UCXqix1iYjiNTsde9nSTynA0LUslElH7
	bXslu7EnsWlhYo8wdMqSqZyjtIiLFAUm0aYaE4NwaCjLrKjzmLvH4b/RvVsH+NjDz2cztohimQ5
	kUPkbpZiW/HJW2P1L8yKvc3wsm6rCdfqsf0Fvlcs/q9gmJINwFCQuQBO+GUINt3SGQTFaIVLBIj
	b8lGwdiiV7W8Vehf98Fjb81b1XGnH3rgknxIk11m39ISyI4h9w+V90lQIe7z8ZMObyF3VMzV8nA
	28BQk26YYBKS2ObJLaf4oY6JwrONy7JSRH6pt3q7YmaQAg8GOy6iaJIywGkOxeTD5+/bpjByF91
	IRXQbMW5m0jQwF18r3zEhASqiRnCplooAOVIKjniUgLLNIYV2tZKHSE9WgaHa
X-Received: by 2002:a05:6300:4086:b0:3e1:482c:77ca with SMTP id adf61e73a8af0-3e7af80ec85mr7789136637.5.1793074099395;
        Mon, 26 Oct 2026 21:08:19 -0700 (PDT)
X-Received: by 2002:a05:6300:4086:b0:3e1:482c:77ca with SMTP id adf61e73a8af0-3e7af80ec85mr7789104637.5.1793074098942;
        Mon, 26 Oct 2026 21:08:18 -0700 (PDT)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd8cccb7802sm2054232a12.22.2026.10.26.21.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2026 21:08:18 -0700 (PDT)
Message-ID: <ccce8847-6236-4b2d-a07d-f2345004de56@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 12:07:56 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v22 12/14] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <20261024-kaanapali-camss-v22-12-7da3ea49c8a1@oss.qualcomm.com>
 <CAFEp6-22zEVoTQ8ewQN4CGW9GARZB84Mp_-SO7KrteYERSew2w@mail.gmail.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <CAFEp6-22zEVoTQ8ewQN4CGW9GARZB84Mp_-SO7KrteYERSew2w@mail.gmail.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDAxNiBTYWx0ZWRfX0Oognrkrw5XP
 H24TMqg3W2YL2AvhXVrLspoiOT7ME7MLiEqTGUs30El9HV22ca0VdhiVyII2eaIqq/FItuUjTQN
 LDz7crdJ5QkG3xd72MT5bPI6SSGPQt0=
X-Authority-Analysis: v=2.4 cv=ZOdCCn7b c=1 sm=1 tr=0 ts=6ae023b4 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=VpRCVQi9ATEJuri8zQAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: VJCpwCtcBkJkDhjxsT5_--FfKNHohobL
X-Proofpoint-ORIG-GUID: VJCpwCtcBkJkDhjxsT5_--FfKNHohobL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDAxNiBTYWx0ZWRfX+gm411cE3SMN
 0KV6djQ8VwypfKCV9O2OlFCjnM7b3ZLfWW2hoVeKKFMviPpxIxMSO0cJcsiDBKMQw4d5HyUeny7
 mr0KqNp+xDBfzHNrQ8CuwzkiumyV35vu9+Y88+NmuQZE++OMkz54lJXkvdj89yY2jYiQLCOVAmm
 oZGnflXDzdyVmMtQ4zEU8vUrn+r6eOhVR8kxd1ElHoYR/uyh5+t2YEVIA4+SUZ1vZwuSLWjRIFQ
 nRj6wNtVyX3ppexrrQ6k8vKH0f+F4+5hWmX55C27hmk0bN1P/j/1IkkJwHa/EMLdLeuD7ZmENGa
 SeXEh6x0u3hSeeUgXiFmck8I3EhBjQuFKNRJPEFvoz5XZAl8WjFziuskKrL6n2MBTInzpY48D2y
 wmEBxKR9nc4MnlQa3XAvl4H3rFDO0y68ra0beTgw8FxAsOvqUMoUgHKxj46UTrOoh4NSolHxUua
 3QBVzTo95sGY3Wy2PrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 spamscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_210822_141290_B9614DF9 
X-CRM114-Status: GOOD (  14.91  )
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjYvMjAyNiAxMTo1NSBQTSwgTG9pYyBQb3VsYWluIHdyb3RlOgo+IE9uIFN1biwgT2N0
IDI1LCAyMDI2IGF0IDQ6MTfigK9BTSBIYW5neGlhbmcgTWEKPiA8aGFuZ3hpYW5nLm1hQG9zcy5x
dWFsY29tbS5jb20+IHdyb3RlOgo+Pgo+PiBBZGQgdGhlIHRocmVlIENhbWVyYSBDb250cm9sIElu
dGVyZmFjZSAoQ0NJKSBjb250cm9sbGVycyBwcmVzZW50IG9uIHRoZQo+PiBLYWFuYXBhbGkgU29D
LiBFYWNoIGNvbnRyb2xsZXIgcHJvdmlkZXMgdHdvIEkyQyBob3N0cyB1c2VkIGZvciBjYW1lcmEK
Pj4gc2Vuc29yIGNvbnRyb2wsIHNvIGRlZmluZSB0aGUgY29udHJvbGxlciBub2RlcyBhbmQgdGhl
aXIgcGluY3RybCBzdGF0ZXMuClsuLi5dPj4gQEAgLTQ1MzQsNiArNDY0NSwxOTggQEAgdGxtbTog
cGluY3RybEBmMTAwMDAwIHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICNpbnRlcnJ1cHQt
Y2VsbHMgPSA8Mj47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICB3YWtldXAtcGFyZW50ID0g
PCZwZGM+Owo+Pgo+PiArICAgICAgICAgICAgICAgICAgICAgICBjY2kwX2kyYzBfZGVmYXVsdDog
Y2NpMC1pMmMwLWRlZmF1bHQtc3RhdGUgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNjbC1waW5zIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBpbnMgPSAiZ3BpbzExMCI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBmdW5jdGlvbiA9ICJjY2lfaTJjX3NjbCI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkcml2ZS1zdHJlbmd0aCA9IDwyPjsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGJpYXMtZGlzYWJsZTsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB9Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc2RhLXBpbnMgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGlucyA9ICJncGlvMTA5IjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGZ1bmN0aW9uID0gImNjaV9pMmNfc2RhIjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGRyaXZlLXN0cmVuZ3RoID0gPDI+Owo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgYmlhcy1kaXNhYmxlOwo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY2NpMF9pMmMwX3NsZWVwOiBjY2kwLWkyYzAtc2xlZXAt
c3RhdGUgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNjbC1waW5zIHsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbnMgPSAiZ3BpbzExMCI7
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJj
Y2lfaTJjX3NjbCI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBk
cml2ZS1zdHJlbmd0aCA9IDwyPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGJpYXMtZGlzYWJsZTsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9
Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2RhLXBpbnMgewo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGlucyA9ICJncGlvMTA5IjsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gImNj
aV9pMmNfc2RhIjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRy
aXZlLXN0cmVuZ3RoID0gPDI+Owo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYmlhcy1kaXNhYmxlOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07
Cj4gCj4gV2h5IGRvIHdlIGhhdmUgYSBzbGVlcCBzdGF0ZSBpZiBpdCdzIGlkZW50aWNhbCB0byB0
aGUgZGVmYXVsdC9hY3RpdmUgc3RhdGU/Cj4gRG8geW91IHdhbnQgZ3BpbyB3aXRoIHB1bGwgaW5z
dGVhZD8KPiAKClRoZSBzbGVlcCBzdGF0ZSBpcyBrZXB0IHNvIHRoYXQgdGhlIENDSSBzdXNwZW5k
IHBhdGggaGFzIGFuIGV4cGxpY2l0CnBpbmN0cmwgc3RhdGUgdG8gc2VsZWN0LgoKQXMgZGlzY3Vz
c2VkIGluIHRoZSB2MTkgdGhyZWFkLCBTREEgYW5kIFNDTCBoYXZlIGV4dGVybmFsIHB1bGwtdXAK
cmVzaXN0b3JzIG9uIHRoZSBib2FyZC4gVGhlcmVmb3JlLCBlbmFibGluZyB0aGUgd2VhayBpbnRl
cm5hbCBwdWxscyBpcwp1bm5lY2Vzc2FyeS4KCkhvd2V2ZXIsIEkgYWdyZWUgdGhhdCBrZWVwaW5n
IGFuIGlkZW50aWNhbCBzbGVlcCBzdGF0ZSBpcyByZWR1bmRhbnQuIEkKd2lsbCBjaGFuZ2UgdGhl
IHNsZWVwIHN0YXRlIHRvIEdQSU8gZnVuY3Rpb24gd2l0aCBiaWFzIGRpc2FibGVkLCB3aGlsZQp0
aGUgZXh0ZXJuYWwgcHVsbC11cCByZXNpc3RvcnMga2VlcCBib3RoIGxpbmVzIGhpZ2ggZHVyaW5n
IHN1c3BlbmQuCgpMaW5rOiAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2QzMGQyYjViLTAw
MzQtNDdmMC04ZTkzLTlhYmRlNGRhZDExOEBvc3MucXVhbGNvbW0uY29tLwoKLS0tCkJlc3QgcmVn
YXJkcywKSGFuZ3hpYW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
