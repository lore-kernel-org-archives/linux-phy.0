Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C528EDEBF7
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 23:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dqzeJB5nNOnmpmgJ+aeOVzLmrUDTAFavuJxH7Xp/U4=; b=Pl9cRjpdEUUAmq
	E0MzccJmSMqQF6ZN72Fc/mAmdnNWxZPxickWFx9MtxFNHYd71UMNOjio+VG5+7ELSwAMxNpe+KuAw
	qp7d3M0xv5c6TXICQtM3iM6MaW5au4PemJvoJPwlilRHIKL7P4q3PgoQ1fUtASrM0iBIDzexq6mU1
	8Vgo9UjsTdyCzxXBwkfuh2bOxF6HwSnfq2qn2Bvhv5bdRg0P6PvfDlWtbZTOdohywBJNIYsGq3umM
	P3pEwc/Q4HY7wtotYki4OuaZVdTCV5AVs6w8i111FinmuxseO4sjNzfxswy7MQ9u+Dh6RBg86k6Q9
	KsF4b/6QcV/fLu9QQ48g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZVA-0000000G71T-1ckp;
	Tue, 03 Mar 2026 23:50:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZV8-0000000G70q-18FI
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 23:50:07 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H1Ggc728310
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 23:50:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PSQYl+DYj9/icAWsCiOj/vArBBpEwz/JOcfkETWeZN4=; b=k/kkHosKWm4MCFL+
	+B2B7KOhrZF0bgcZbPim0nLB73JCdPxEJLgYYABUKt8MrTgfr7u6ONUSC4a1DgGO
	TSBvPsaGca5ASjf4z71s/OwqFmFlpcQA4YYRQXoyopevDwUJ3+hoNyOnTW5WUAnD
	hEcTvDwwSVE08pBOqCUtkb0UKOB/D1O8zv6dbLAA9RvLx8DqX9xj5PLqVnoUjTI3
	zNEj9Jz9g8Pzh5jQXn/Ez5YMIPOiLtUEIMu7yT0eGiUo5vdovrxW8+YQNavKZRDW
	ENUY/28Goct8t4ExS5UzcZgCC7utd1ea9gu2fZ6Vtxf8wyzMuhX6zknvu7MEqQiY
	h02Wew==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cns5fumfu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 23:50:05 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2be21f89332so1380552eec.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 15:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772581805; x=1773186605; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PSQYl+DYj9/icAWsCiOj/vArBBpEwz/JOcfkETWeZN4=;
        b=RwaaOSsXZHHILKRhvHaOnYCmidEMhi6gVTXpY2t5zu1FU+I/4h1dkoykVDhMbxCL1g
         12QQCWiC7zjc1gHWgU0l5Qtc/DuRheUHvoLJeYrUNWXQvDfTGpG0ShmIALjTPIWiNIvx
         YOiECX2vPzr4pbhU3qGrJKJmLPrMMjgTXLUa4bWybIrNfG1sRsMf/HqHlh/oeJThTGzc
         5Mmq+U7bwA7dn/5jfse/6oOa32+P5gnAcE3wB5rFnJ4fBzGLe135+T0vAad9T9ozAXGC
         iboYI/CXpDnbSPMn5dCsGU8g9Tk4KGbmGx/Ky6VTnn51xBjHIfh/6cSdD/PSc3yWpioS
         9PAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772581805; x=1773186605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PSQYl+DYj9/icAWsCiOj/vArBBpEwz/JOcfkETWeZN4=;
        b=O7MgxA1KeqXp9VuFwOfXdJmeBcnGo8Hq7NLBPw1eki/uLlXfH3ECFollrBbRi78wbS
         oTtEdM2DdFb4ZJa7I8NMCvjlch9D+PxiwBWXDtovlvm/oZv9MNav0JSMw63/i55LSJRn
         U9Zdi8qXcRO3rGfF4wA33u79jF2QjtHDJz7k1k9wGJv/ZsRXLe0maflvsSF8Cd4In2w0
         3KcJJ0lJlSbPB/mPLbM1gzK4lFjCYEsfjiFwAkkl6wk5paH64iFJ1nle1bILrbaTzmhk
         Irz+uQWaSl+Dz4XGuULZt4gCkHh3oGmAfz94ANHLvO22ToqYUSGQE8ZkZ1EMSfrORaJd
         4sYw==
X-Forwarded-Encrypted: i=1; AJvYcCXxtI+iabf7Ahfe+5b3rNb5NkBUGbdw1wVUS9RYg2kh4TwC+rQS3IjHH3C8ZEvqTVNBgocfEYLOnp4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJsUDZwFc/eK6T2obSPrArZz1XgIbPEHb3xOpe2G154HkVGEAZ
	ws82OC8eIsFu/rg4rs57LHHWiOIgGrVNhk6hrz4H63MKvoCVE8xIQC7JrX/LIgrMvvZhrGhu6D8
	YdHx8s25tDsa488RwHnQDvprMLvu0IBz+ZHC7W8DsQAtwAqjmNY9bcV3KPXO+suDD8ZSq95R/mq
	ja
X-Gm-Gg: ATEYQzx9pPV04bhDhdQjL5Z3C/EGFv2paxBbFYHPEgL7sGEq9CaJfhEIgjNBJ0+mT+c
	6xGZRjeSGSXcwOWV5fi954didZkTOD8ee430MagTDuZzSyaScS+4qNHNywTVzSqM4pUUF5BkKKG
	rRXZh4h4vgYKQ103M7tfwAeSN+3ksWupMoIVhGm4Sw+TDUmlVFR8C+ICIORIBbIeZDwajhD0qKD
	JjxYdqNerSBh7PshLkRtRuWiAe3E/coDRstpndcqCZDwsVd47H0HlmJn8/CaE1AUcdOx23ItfVh
	NCjnvsnvun4VkCP2da96exTEtyeLcjYxgNbLJCCvaj4Z8Lre0pJluemD1FsgWhHVAhLh/LiN/pg
	ws/OcGe+RMeRBVfYfuyYsh9dfFt0XDz66nwwpNL8ILZ7i851HMjhIw+3lXq6LR/Ab8S2rvRKryW
	0n
X-Received: by 2002:a05:7022:622:b0:11d:c04a:dc5b with SMTP id a92af1059eb24-128b70daf02mr9271c88.30.1772581804634;
        Tue, 03 Mar 2026 15:50:04 -0800 (PST)
X-Received: by 2002:a05:7022:622:b0:11d:c04a:dc5b with SMTP id a92af1059eb24-128b70daf02mr9243c88.30.1772581804023;
        Tue, 03 Mar 2026 15:50:04 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1279cbd1993sm8610682c88.2.2026.03.03.15.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 15:50:03 -0800 (PST)
Message-ID: <8e7c2036-74de-4f21-8269-8e2b24323753@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 15:50:02 -0800
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
 <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
 <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
 <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
 <bfTUflirC2qzMSllq_4qHGr3GL6TJ088yNF4lCBtjCoc1sXqz0KcfYyWuQv6TeRtP6GdpqllNp4ipl4Qax4xwQ==@protonmail.internalid>
 <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
 <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
X-Authority-Analysis: v=2.4 cv=Pv2ergM3 c=1 sm=1 tr=0 ts=69a773ad cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=U-kwclmyVS-SegT1OQUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: DX5EhN0UPfAxT_WHT90AkKRjPw6vHLI1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5NiBTYWx0ZWRfX467FoPD8VmzE
 ymdA56g+NQYkD5uOpmhMmNV7ZmlUxTEligqW5Gqkh89vAvSr8857jF8q/yf+zVAJdPTb+kb6R9m
 KxQdXOieybTeyZqJHIt/UrIshA1ziOcgYrpOE4Ri6x2mxQNKBCX+EWQuPRONab+YfBue5Whogl/
 /MtJSfmrz+DkUp/7wTKZKL4nRiK4iGdZeY/oVY4SnCpN7yOjnC1CM4xzlowLU5hf4MEhQnmKZ9s
 oN56gmD8OuBBLhpM1/uvBBnSKwDv5rmoChRyfDtZ1UaxYLkL+oPc7LN4BBcCDoJh9Kgg0J0hSGC
 FGLGK5ntAlVf/gp4h8Pu5ZrbiD3xyjIqbQjp70ATYbkbPFzGC1KwURz/edtxd0/IK4rwnjRdORQ
 KTYUetcIFaA8hWxWhdWeDmjV2F40XPk6f1V+XRdUfn8PCu3IuTPER6am9K0Kkw7J2eXx/LJvFIo
 Atx+wGTgwQMKAYM65/g==
X-Proofpoint-GUID: DX5EhN0UPfAxT_WHT90AkKRjPw6vHLI1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_155006_313587_7B0086C8 
X-CRM114-Status: GOOD (  16.45  )
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

CgpPbiAzLzMvMjAyNiAzOjI2IFBNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDAzLzAz
LzIwMjYgMjM6MTcsIFZpamF5IEt1bWFyIFR1bWF0aSB3cm90ZToKPj4gU29ycnksIEkgZG8gbm90
IGtub3cgYWJvdXQgdmlkZW9jYy4KPiAKPiBJIHRoaW5rIElyaXMgZG9lcyB0aG9zZSBpdHNlbGYg
c2VlOgo+IAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaXJpczogdmlkZW8tY29k
ZWNAYWEwMDAwMCB7Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHgxZTgwMTAwLWlyaXMiLCAKPiAicWNvbSxzbTg1NTAt
aXJpcyI7Cj4gCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVnID0gPDAgMHgwYWEwMDAwMCAwIDB4ZjAwMDA+Owo+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxNzQgSVJR
X1RZUEVfTEVWRUxfSElHSD47Cj4gCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWlucyA9IDwmdmlkZW9jYyBWSURFT19DQ19NVlMwQ19H
RFNDPiwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmdmlkZW9jYyBWSURFT19DQ19NVlMwX0dE
U0M+LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZycG1ocGQgUlBNSFBEX01YQz4sCj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhwZCBSUE1IUERfTU1DWD47Cj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWluLW5hbWVzID0g
InZlbnVzIiwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidmNvZGVjMCIsCj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIm14YyIsCj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIm1tY3giOwo+IAo+IFN0aWxsIG5vdCBnZXR0aW5nIGFuIGVzcGVj
aWFsbHkgY2xlYXIgcGljdHVyZSBvbiB3aGF0IF9sZXZlbHNfIHlvdSBhcmUgCj4gcHJvcG9zaW5n
IGhlcmUgZm9yIE1YQSAtIGhlcmUgYXJlIHRoZSB0aHJlZSBvcHBzIHdlIGhhdmUgZm9yIHRoZSBQ
SFkuCj4gCj4gU29ycnkgSSBkb24ndCBnZXQgaG93IHR1cmJvIGlzIGNvbWluZyBpbnRvIHRoaXMg
Li4KU3VyZSwgSSB3YXMganVzdCBnaXZpbmcgYW4gZXhhbXBsZS4gSSBoYXZlbid0IGxvb2tlZCBh
IGxvdCBpbnRvIHRoZSAKSVBDQVQgLyBjbG9jayBjb3JuZXJzIG9mIHRoaXMgdGFyZ2V0IHBhcnRp
Y3VsYXJseS4gU29tZW9uZSBuZWVkcyB0byAKY2hlY2sgdGhlIGNsb2NrIHBsYW4sIHVuZGVyc3Rh
bmQgd2hpY2ggUEhZcyByZXF1aXJlIHdoaWNoIHBvd2VyIGRvbWFpbnMgCmFuZCBhZGQgdGhhdCBp
biB0aGUgZm9sbG93aW5nIE9QUCB0YWJsZSBhbmQgYXMgZm9yIHNjYWxpbmcgeW91IGNhbiB1c2Ug
CnRoZSBzYW1lIFJQTUggbGV2ZWxzIGZvciBhbGwgdGhvc2UgcG93ZXIgZG9tYWlucy4gQnR3LCBp
ZiB5b3UgaGFkIApkZWZpbmVkIHRoZSBiZWxvdyBPUFAgdGFibGUgZm9yIFRPUCBHRFNDLCBJIHRo
aW5rIHRoYXQgaXMgd3JvbmcuIEl0IG9ubHkgCmhhcyB0d28gcGVyZiBzdGF0ZXMgKG9uIGFuZCBv
ZmYpIGFuZCBkb2Vzbid0IG5lZWQgT1BQIHNjYWxpbmcuIElmIHlvdSAKbG9vayBhdCB0aGUgSXJp
cyBkcml2ZXIsIHRoZXkgbGluayBvbmx5IHRoZSBteGMgYW5kIG1tY3ggcG93ZXIgZG9tYWlucyAK
dG8gdGhlIE9QUCB0YWJsZSB1c2luZyAnUERfRkxBR19SRVFVSVJFRF9PUFAsIG5vdCB0aGUgR0RT
Q3MuCj4gCj4gK8KgwqDCoCBjc2lwaHlfb3BwX3RhYmxlOiBvcHAtdGFibGUtY3NpcGh5IHsKPiAr
wqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJvcGVyYXRpbmctcG9pbnRzLXYyIjsKPiArCj4g
K8KgwqDCoMKgwqDCoMKgIG9wcC0zMDAwMDAwMDAgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG9wcC1oeiA9IC9iaXRzLyA2NCA8MzAwMDAwMDAwPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+Owo+ICvCoMKgwqDCoMKg
wqDCoCB9Owo+ICsKPiArwqDCoMKgwqDCoMKgwqAgb3BwLTQwMDAwMDAwMCB7Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgb3BwLWh6ID0gL2JpdHMvIDY0IDw0MDAwMDAwMDA+Owo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2cz47Cj4g
K8KgwqDCoMKgwqDCoMKgIH07Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoCBvcHAtNDgwMDAwMDAwIHsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAvYml0cy8gNjQgPDQ4MDAwMDAwMD47
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9s
b3dfc3ZzPjsKPiArwqDCoMKgwqDCoMKgwqAgfTsKPiArwqDCoMKgIH07Cj4gCj4gLS0tCj4gYm9k
CgpUaGFua3MsClZpamF5LgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
