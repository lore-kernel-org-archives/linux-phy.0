Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5930606A33E
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 09:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wiHZdxdD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QUWnkuiC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SI6e3Nh7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=StXKC5L0NUTyDvUW0rz5T9KpJpRf0Mj16lNmHTe8ZOc=; b=wiHZdxdDUqBjW27Mg5UVuLjvo7
	WBJcuOr4OCMh310XMbvB+BIFZqODiSFxaP9KhQvjdbhacinWmAoSa9a6iYJ3svjOB6UBMX4gPAlyM
	bcjGZZY70ggWne0RJhUMqPv2ECJx45RbsAYWt8Tggyirtozra3S7vQTXz4qwVxTXwKK7ArQWGb9Q1
	I8t0F2BUQXCgg0lRlH8/mdd1qfqHVfd+oPil6cygt44fZfyXgwOnT32STOxV0NHf25xMvGzq4fXDn
	ipMPNqSpGxCR6gHPm4flv5cblX3xEq+mc8yz00mOFGIA+UWXTayRVRug328dOO3wWjGYnWIV2mYXX
	IIwVgrYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo4o-0000000Fx7D-1Wcu;
	Mon, 02 Nov 2026 09:11:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo4m-0000000Fx6r-1cki
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 09:11:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29A2ig3402655
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 09:11:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uh0srCBGufPNZ7cwNZU1GCOOPE61Pwx0Cml7uyDZJic=; b=QUWnkuiC9xEXxw81
	CXmHwdRTUEXk21Gqf98cesdGE6yjk4JrLYRuxMyFjTc5gk31J8r3SlDW2sBz/AFj
	D76XGf2mYKajqd+mGUNqClPL+dtiJUjbxAdmmjfPCXA9KynPCiAKnec34fkEUE+e
	d/oVF5KK0EmBTkvjjVM9IpMH30UGG0f5WnEUm0G2frqNR0KNonYJ57HJG+zgCBRM
	mkTONZwP3yQlpJd9MAwABHLQKiytzPAHOppuhgQ3c6mt09HBj7SfKMXz+2x6OWsY
	+68ms6CnFWMULK2uWfcSDglIZE8DDxwGMiDYFzNhUpTJORhPDvi/F5cOGsv+YA78
	EDDaMg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hppfe8b7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 09:11:35 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ea785a4decso34014375ad.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 01:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793610695; x=1794215495; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uh0srCBGufPNZ7cwNZU1GCOOPE61Pwx0Cml7uyDZJic=;
        b=SI6e3Nh7taWVJaAuO5lIYSzLp88swlzzgYkoW0IwpwPFJY26hwe2Rlrnn3VR4XUYl1
         RC7s0Eg8/3B/VYZ67iVrBrlrO5SVmQPJOH798jb3nS1+CLmUHBVw0vhergv4wQgzvrb5
         lo5kGEQHC8kQ5To563xup7Z1yu4osU5PBVDkSSW3rTh8lYqDjvMxHq0Y6RzYrXAZYEMl
         pU/AeczMvtVI5IquZNhNUmHgOtWQ0kP4Tni0/laa8m+NT4MVYp21E3Z1QpW9pGUH7mR3
         p95ah92Y9AYyDCN2yW+fiWNSASEwlCc4u44XMpxjGdox13h2EZbhWsS29NW+hDMufsmS
         7gSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793610695; x=1794215495;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uh0srCBGufPNZ7cwNZU1GCOOPE61Pwx0Cml7uyDZJic=;
        b=wUgfglGTJOMVNa2Z4n07D0W/YCSMdW03h/rxnffl3Z7kVSaF0EnnimTOZJNh4YRhge
         V8PkAGwnzEOx09PkkgzkIfXLmw38NfHxbP2Mji8vGl6HtWjQlfCQKa4R41HWxpe2mBoj
         Th6N3b/Xrs7EJo245GysvbrPlCFxAg9B1tB+vC+X4PN1G615FI9dQkSWbLuYOoA8IdJL
         xapZdwLSG0h+cL9TzsX6eQI+NWGwo4lkA4xjoU8vMS5uPJTBzJAs3fkidX15XjTa2Gjh
         +LeIYQ7xKBQjOmjRBiTFGpkt34IfG3dkcf3zLP4KFvzoHen74nMDxkm2EarchEv1wJ3J
         /A4w==
X-Gm-Message-State: APuU4Z+BU75oQn+8MI5IYkaGlrdZKmJ9bNWRCGUo/5K8yKB6sCWigujV
	8lhDsESYamYYp7l5BSy70q8Iq7xSUhc+vOyO/2lqYrad0uHoWAvXkBvDBsLbFz9zE2dVW+wcp58
	r8YAujIIbgG3TPhYXk7K+go+MIVXFrUamlC5euvW+MN2NTudYQZkRomFM6sZ2A3KIgRJ0
X-Gm-Gg: AYBFou36fVyHXJ/DHzAhpy6s2q6ef/GPQoSnz3O96QKmFagr+0UUhRux8GFf5GaZMpS
	fneTqw/01b7PJzcmDck+747nouF4iGqfpfk3k9GDmXMrMh//Yn8eubFMK+MZEIygHxmR9oKPykJ
	FnA4z8YvInzZLZt+Lw8F15VYFolyWqTc6vVEzjgNPeseVMrwk2tmvvv21sMQ74+CjcfhRasHwza
	ubkTqkMQPtAwIFHsougRn00SIvbDEGmjiT0S14j2orN2H410Xyye5DBCb83dgyLbyFfxYBy0AEy
	Yun3dnnGu7wBO0Byo+lSa+kqWk0j2rM/ac71puVLPh+gSWY7kf/Xi2o/7jtenzo/i4es/m21PMP
	VINIwB7OIRYCfHlKx93py+tvq397SqJE0gUjfxpUlwMNQd2NKfh/xUU+MWv89gWTfl5mJ2Mdt34
	Kdg00ae1aKXAjZriK5LmQPNvP4xJnqDCGs
X-Received: by 2002:a17:902:f607:b0:2e9:3dd2:a8f6 with SMTP id d9443c01a7336-2eb364941d8mr67629355ad.9.1793610694922;
        Mon, 02 Nov 2026 01:11:34 -0800 (PST)
X-Received: by 2002:a17:902:f607:b0:2e9:3dd2:a8f6 with SMTP id d9443c01a7336-2eb364941d8mr67629165ad.9.1793610694447;
        Mon, 02 Nov 2026 01:11:34 -0800 (PST)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb39248909sm25062335ad.33.2026.11.02.01.11.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 01:11:34 -0800 (PST)
Message-ID: <757f0875-8940-496d-a35b-5f482887739a@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 17:11:27 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 01/15] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
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
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-1-95f250b18612@oss.qualcomm.com>
 <c10dbcfd-b9d7-4ac0-be30-6b78594bfdab@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <c10dbcfd-b9d7-4ac0-be30-6b78594bfdab@linaro.org>
X-Authority-Analysis: v=2.4 cv=SeZi5fRu c=1 sm=1 tr=0 ts=6ae853c7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=dRQ5KtDc-XJZQSWJ7xIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfXwWk8m7a3+091
 GwNad+2npi0iWJJieagAgtZt7bwKUuBWblxMGn+ukKSZ12R0guCqaWUPvjRefSUlE8xLK1gS2MM
 vAFlVf4CMdZEVwnIoJXRp2CEnKZP4L8vnLtVP2YYVy3KDWUTjV1utd7HY3eEgu8YMD0FXi3aggM
 nDNipJFzNReZhQ+04jrUbDgHjmqa7YMqjy58CbVLwjgsBSUrtgeQnueW6sJ+Ww7yJIAjRGZf5/N
 dSJAmv7RN3bHmh36DIZPa81Rbm7a3ordbAw5aK31WQUVFdrgzZ20IbCMkTmF1ywXmE0WtKc01LI
 KiHGnQcOkP9AXhdfTmg2QAuzWYzxfrZ26rC1IKx61Rx0GAle1f21IHOrhKHnj4hNTHPrPGuKpwZ
 FTOEA0jCoeM4D6MySRXXbJuT1Z/PvKlLPg+RrXeg1sI2qw6GBZNmtyjApdcmiDkVhlA75jpo+1k
 +KO/TOC/a2whOe9RusA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDAzNiBTYWx0ZWRfX2mxQWNoLsmGY
 fRjvj1FnSe23y2+bzRXCge8H3oUMAux7i7jYp2SmpYCi/A+EKsUhmAhCmqyO/VlIpwdnetiygko
 EuW3HHsKQOWjOAqDjGwGwxQtskTftDY=
X-Proofpoint-ORIG-GUID: HzZQ59dJwg8KmkDIU9N8RGwzs0G3lFZV
X-Proofpoint-GUID: HzZQ59dJwg8KmkDIU9N8RGwzs0G3lFZV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_011136_437438_5E92DC77 
X-CRM114-Status: GOOD (  15.81  )
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

T24gMTAvMzEvMjAyNiA3OjQyIFBNLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4gT24gMTAv
MjgvMjYgMTc6MjAsIEhhbmd4aWFuZyBNYSB3cm90ZToKPj4gVGhlIEthYW5hcGFsaSBDU0kyIFBI
WSBpcyBjb21wYXRpYmxlIHdpdGggdGhlIGV4aXN0aW5nIHgxZTgwMTAwIENTSTIKPj4gQy1QSFkv
RFBIWSBiaW5kaW5nLiBBZGQgdGhlICJxY29tLGthYW5hcGFsaS1jc2kyLXBoeSIgY29tcGF0aWJs
ZS4KPiAKPiBXcm9uZywgaXQgaXMgTk9UIGNvbXBhdGlibGUuCj4gCj4gRHVlIHRvIHRoZSBmdW5j
dGlvbmFsIGRpZmZlcmVuY2UgaW4gdGhlIHJlZ2lzdGVyIG9mZnNldCwgd2hpY2ggaXMKPiBkZXNj
cmliZWQgaW4gdGhlIHBhdGNoIDAwMDIsIGl0IGlzIE5PVCBwb3NzaWJsZSB0byBmYWxsYmFjayB0
bwo+ICJxY29tLHgxZTgwMTAwLWNzaTItcGh5IiBjb21wYXRpYmxlIGRldmljZSBkcml2ZXIsIGFu
ZCB0aGVyZSBzaGFsbAo+IGJlIGEgbmV3IHN0YW5kLWFsb25lIGNvbXBhdGlibGUgdmFyaWFibGUg
InFjb20sa2FhbmFwYWxpLWNzaTItcGh5Ii4KPiAKPj4gUmV2aWV3ZWQtYnk6IEJyeWFuIE8nRG9u
b2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+PiBBY2tlZC1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBIYW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgo+
PiAtLS0KPj4gwqAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgx
ZTgwMTAwLWNzaTItcGh5LnlhbWwgfCAKPj4gNCArKystCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLSAKPj4gcGh5
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAx
MDAtY3NpMi0gCj4+IHBoeS55YW1sCj4+IGluZGV4IDFmMWUyYTQ5OTNiMi4uNmU5ZWI4ZTI2NWRm
IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20seDFlODAxMDAtY3NpMi1waHkueWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtY3NpMi1waHkueWFtbAo+PiBAQCAtMTcsNyAr
MTcsOSBAQCBkZXNjcmlwdGlvbjoKPj4gwqAgcHJvcGVydGllczoKPj4gwqDCoMKgIGNvbXBhdGli
bGU6Cj4+IMKgwqDCoMKgwqAgb25lT2Y6Cj4+IC3CoMKgwqDCoMKgIC0gY29uc3Q6IHFjb20seDFl
ODAxMDAtY3NpMi1waHkKPj4gK8KgwqDCoMKgwqAgLSBlbnVtOgo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgIC0gcWNvbSxrYWFuYXBhbGktY3NpMi1waHkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIHFj
b20seDFlODAxMDAtY3NpMi1waHkKPj4gwqDCoMKgwqDCoMKgwqAgLSBpdGVtczoKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBxY29tLGdseW11ci1jc2kyLXBoeQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHFjb20seDFlODAxMDAtY3NpMi1waHkKPj4KPiAKCkFn
cmVlLiBUaGFua3MuIFRoaXMgbGluZSBvZiBkZXNjcmlwdGlvbiBpcyBzdGFsZS4gVGhlIGNvbW1p
dCBkZXNjcmlwdGlvbiAKZG9lc24ndCByZWZsZWN0IHRoZSBjb250ZW50IHByZWNpc2VseS4gQWN0
dWFsbHksIEtOUCB1c2VzIGl0cyBvd24gCmNvbmZpZ3VyYXRpb24uIFdlIG5vdGljZSB0aGF0IHJl
Z2lzdGVyIG9mZnNldCBkaWZmZXJlbmNlIHNvIHRoYXQgdGhlIAphZGFwdGVyIG1hY3JvIGlzIGlu
dHJvZHVjZWQgdG8gaGFuZGxlIHRoYXQuCgo8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjYxMDI4LWthYW5hcGFsaS1jYW1zcy12MjMtMi05NWYyNTBiMTg2MTJAb3NzLnF1YWxjb21tLmNv
bS8+CgotLS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
