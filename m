Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 802A0EDEBF7
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 23:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7RFkqD/X2Pw4DijZAsiL5RXTB8zCfYGelAZzgjnlZY=; b=kdI9ChFbIR3rDf
	nerYaPzxhu5t+UWcogyeokERmUXbIOybaNOLBZbI1MblSsFS/4E3O35pBEkW8bdZCxToCmWQUpq1F
	adqXnhVUdfQ4yXF6b+TAaQDJhwtt3zx3aQ9jWUAOauL6dnkTVeNXH+KiZdI+966zGSEqULcpDXdCx
	F4jHeubsFfREYjo9m34kdeChfRnSKN7IdUcv+t1Jpvs3mwVFqVJw5sYCzZ+NBhOGaQqnambyRuOxF
	fYcVW8LFgUXuy/JJEi1Tk9CJK524gluKk5rTr/xNP2mAxGniBDVvGRt5FgWP4qJtYficj+CtLfWeX
	wFEmVQAr3whjtshC5bQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxYzi-0000000G507-0724;
	Tue, 03 Mar 2026 23:17:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxYzf-0000000G4ze-14wh
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 23:17:36 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0f8o4030564
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 23:17:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T/pl0pm3Bd+CM66/M4SPYsQpdYEpO39Z9/Nij6zifh0=; b=O+sXld4QeeFObnvZ
	bH7VeTQPXIIVpSo3ZjIwElgFO/FaYXNzgMLwT3krD9N5p+FIcBLPRrtHJ7S8v0ai
	UoYUH4FowNUO9FNHI6uVpEc6azGAYJZbhXhPfHgOaNd7cMY5oBCIaSX1Gl2WiU8N
	tCDkUjf+A0JeI7uEeSLWtWKdasAqSWSoaP7jSsFFBdFE7G8y/N8GBj24zzmNMtAX
	aca2Kyy2+jKVQLB17NFlLrtg8QC1LtiqNj9ADX8qLd+4rA9wn7vah3mXQi8ctXkv
	Y29xBuWc1xuX+3vuKhNQZlcoY7E90hbJmC4cdrDuG2e2rpBtyJWywuuIyf5Jt1Dk
	AVMdDQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu304w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 23:17:34 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bdc1b30ac8so29206502eec.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 15:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772579853; x=1773184653; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T/pl0pm3Bd+CM66/M4SPYsQpdYEpO39Z9/Nij6zifh0=;
        b=Zq6Hh4/Wv+aJ7jHG8/XYVIHqqJAeCLijfXO67UDQ5u3sxMLHJz2oMlTR5RuGT0d7ps
         GJlwSjoxP1IqPik/kWkgr9G0BMcYZJ89BaIyAIpymOLHBLe++B4tz5BjW1qddoSiEitx
         N7E4lzteVpbcqRCogyQ6Ka+F8Id3LbrbMwEWhvh1VhhDuxz7a+iiRb40+RZeMclAIC++
         PBui5ERMbf5DX1AhELAMaP+IjZqjMpWSDRcV7Nz9InXu8I77gtqgm+yS1qf3NAtfvkex
         FLgTa79758qeBLpgqe+NLeC0HQq3LpyU4sn3rm8AswHr3IJq7b3yREN+pzP7pHNAh1eK
         qmzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772579853; x=1773184653;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/pl0pm3Bd+CM66/M4SPYsQpdYEpO39Z9/Nij6zifh0=;
        b=O49AWGv2WQQ1a5+VWvpQoZAP6bKrA/8D6pjluYaOTha/Du3mZx9clR8cYR2Eu4Y6b+
         HhVigwj9UxW+w/8IARNgEcSW9ql97e2YPspbMHcpeRxqn+BxIrJ0iWoHjWOZS24HRe+V
         ON/78Xyltml7JoGuIXHQMibAazU6tDxvcNWQ3qm+k7Sprno7OfnxLq7LUML5ywhV6Puh
         BmmHe40xPYhWSjQuS7e1bth2Un7EsRLa/7rT5x+bAa7BYZjegwk2pd8/YRXZHtm5s/d9
         jygAIF5XLgBQulqFt4RMlB7651ZtJvh/e3/1WNXnwB1XT0VWSF32AJKJeJ6y2ZGb5+/M
         iJrg==
X-Forwarded-Encrypted: i=1; AJvYcCWcfhVgKq19xtC4ehbE/N7KUW0UmoLROOW1DS0Sh5I4IzZI+IzKIJCEArmGECr+3a1xpYZSqZYeJaY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy92ZwzXDDIg7DQp0e7PRZQjFIJGWyjL2Ba6wmF02GxuD4HgJAS
	YxUMOEbwcVBGwq4KbsrRIGmmiQFVgoaGD0UXLMpbZ/8TFijDyAyo4W1kVGJTd0KOwgCmaR8Ii7V
	hB2lhomizhaStCbisrNQZy+Av2aufg54c45f8pthHJeqwxg1eQwmUkNXNs6Wns/kD3KUD
X-Gm-Gg: ATEYQzy5cQxjb+//M3pd1+qmG59CTg/PxzLbwfa6tknfQgbipl+LSHmWGtZB2Fq0K8g
	TS01qy9Ok+NWGD+HL88seh5yfL9EgYD7f7c/rpXBBz7PP/YqQf6Kz3umJaH5azY8l1g3+x2lo/S
	ZxzHahAjB6otNRQQdnrzc/yar7uM2/UNsoMXp/d8/oCeHDf5rjHfOcgHci0VP7mAylY2ernFWR/
	SXAc+E3mdIGekVuVv1JsyGVBGbhtBOkcnXlczY1tXzlNnvkHCQndjWdZhHNkiBFmqrjnMw91Rcg
	rpJyvVX7wTdCLAfT2eUCznEXx2ZL2nkzLGJnl25mb4syYOEXygWuWt4kS6/IajE446j966FDwXW
	Of+gvjwl1JyCP00p3gU3XaaszJePRBvqNq0RaIwJgNiU1ojvaJenz9btKk82MjdgpDAfhLHdIPW
	YA
X-Received: by 2002:a05:7300:e12a:b0:2be:ca4:e119 with SMTP id 5a478bee46e88-2be311c8626mr6552eec.30.1772579853138;
        Tue, 03 Mar 2026 15:17:33 -0800 (PST)
X-Received: by 2002:a05:7300:e12a:b0:2be:ca4:e119 with SMTP id 5a478bee46e88-2be311c8626mr6539eec.30.1772579852539;
        Tue, 03 Mar 2026 15:17:32 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2f0d1849sm411313eec.28.2026.03.03.15.17.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 15:17:32 -0800 (PST)
Message-ID: <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 15:17:31 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
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
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a76c0e cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=w7-7VXPaYEwSs5UKW_AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: FEMauF06ePWAlb33WAratj9G-GEf2H4f
X-Proofpoint-ORIG-GUID: FEMauF06ePWAlb33WAratj9G-GEf2H4f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5MiBTYWx0ZWRfX7oBeh6ery1nA
 y74k6p6Z3oveEfqVeLjFK0X6XW1vhxNpSbWBJl5Chxb7sVox0hmiewBMyXEUKi94CjTdC2p4acV
 KO3jqGeuGlzupeSUE9F7dwnsw0NAc5i0oO7PdUYajsmlWYEwQdPaVmWbypYr6i0Wo9S5hEphs8n
 Cho9+Q+fXbV/xEezAs80EHMj8KA7trQI3ydEbyTNI9Dpav8K4Mc/0Z3NBfVPde5+YdwB/DZNoqp
 ec3ggOwMsdjCjpBaa9th4EgQbi/7y5DeGDNInIKflgoXFu6x5zcXsXbbD4wNX1cgFr6puZKGft3
 4Zc0VvD6+uhBtbfa18ri2zOUU9xgRZAcH+SNbXYutqYwhWgCPxNj2oBeoQy/cWzjWbFrHytkGB0
 SHBwNQ8bAC5XGUgURpOX/Jc+ngtNRW+yrlouOKjteyAFzzMxytaT3vTWV0WQQbhe9/o+mwSWe8C
 Irj4L4Q1i9EwZZysedw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_151735_418500_E780ED3E 
X-CRM114-Status: GOOD (  21.00  )
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

CgpPbiAzLzMvMjAyNiAyOjUzIFBNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDAzLzAz
LzIwMjYgMTg6NTgsIFZpamF5IEt1bWFyIFR1bWF0aSB3cm90ZToKPj4+PiAtIFRJVEFOX1RPUF9H
RFNDCj4+Pj4gLSBNWEMKPj4+PiAtIE1NQ1gKPj4+PiAtIE1YQSAtIGZpcnN0IHRpbWUgSSd2ZSBo
ZWFyZCBvZiB0aGlzIHJhaWwsIGZyb20gbWVtb3J5IEkgZG9uJ3QgCj4+Pj4gcmVtZW1iZXIKPj4+
PiDCoMKgwqDCoMKgwqDCoMKgIGhhdmluZyBzZWVuIHRoaXMgaW4gaXBjYXQgd2hlbiBJIGNvdWxk
IGRvIHNvLgo+Pj4gTUNYIGFuZCBNTUNYIGFyZSBjb21taW5seSByZXF1aXJlZCBwb3dlciBkb21h
aW5zIGFjcm9zcyB0aGUgUEhZcyBidXQgCj4+PiBhIHN1YnNldCBvZiBQSFlzIGhhdmUgdGhlIGRl
cGVuZGVuY3kgb24gTVhBLgo+PiBBY3R1YWxseSwgaXQncyBhIGJpdCBtb3JlIGNvbXBsaWNhdGVk
IG9uIHRoaXMgdGFyZ2V0IGFzIAo+PiBjYW1fY2NfY3BoeV9yeF9jbGtfc3JjIGFsc28gZGVwZW5k
cyBvbiBNWEEsIHdoaWNoIG1lYW5zIGFsbCB0aGUgQ0JDcyAKPj4gY29ubmVjdGVkIHRoaXMgUkNH
IGRvIGFzIHdlbGwuCj4gCj4gUmlnaHQgYnV0IHRoYXQncyBzb21ldGhpbmcgdG8gbW9kZWwgaW4g
dGhlIGNsb2NrLWNvbnRyb2xsZXIgdGhlbiBub3QgdGhlIAo+IFBIWS4KPiAKPiBpLmUuIGlmIGEg
Y2xvY2sgZGVwZW5kcyBvbiBNWEEgdGhlbiB0aGUgY2xvY2sgY29udHJvbGxlciBzaG91bGQgCj4g
cmVwcmVzZW50IHRoYXQgZGVwZW5kZW5jeSAtIG5vdCB0aGUgUEhZIHRoYXQgZGVwZW5kcyBvbiB0
aGUgY2xvY2suCj4gCj4gY2FtY2Mgb24gaGFtb2EgbG9va3MgbGlrZSB0aGlzCj4gCj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYW1jYzogY2xvY2stY29udHJvbGxlckBhZGUwMDAw
IHsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInFjb20seDFlODAxMDAtY2FtY2MiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwwIDB4MGFkZTAwMDAgMCAweDIwMDAwPjsK
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3Mg
PSA8JmdjYyBHQ0NfQ0FNRVJBX0FIQl9DTEs+LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmYmlfdGN4b19kaXYyPiwK
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8JmJpX3RjeG9fYW9fZGl2Mj4sCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZzbGVlcF9jbGs+Owo+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvd2VyLWRv
bWFpbnMgPSA8JnJwbWhwZCBSUE1IUERfTVhDPiwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwm
cnBtaHBkIFJQTUhQRF9NTUNYPjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnM+LAo+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZycG1ocGRfb3BwX2xvd19zdnM+Owo+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsK
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcmVzZXQt
Y2VsbHMgPSA8MT47Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwxPjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIH07Cj4gCj4gU28uLi4gd2UgbWF5IG5lZWQgdG8gYWRkIE1YQSBoZXJlLCBwcm9i
YWJseSBkbyBiYXNlZCBvbiB3aGF0IHlvdSd2ZSBzYWlkIAo+IGJ1dCBJIGJlbGlldmUgVElUQU5f
VE9QX0dEU0MgaXMgdGhlIG9ubHkgcG93ZXItZG9tYWluIHdlIG5lZWQgdG8gbGlzdCAKPiBmb3Ig
dGhlIFBIWXMgdGhlbXNlbHZlcywgYXMgd2hhdCB5b3UndmUgZGVzY3JpYmVkIGFib3ZlIGlzIGEg
Y2xvY2sgcG93ZXIgCj4gZGVwZW5kZW5jeSB3aGljaCB3ZSBiYXNpY2FsbHkgYWxyZWFkeSBjYXB0
dXJlIGluIHRoZSBjbG9jayBjb250cm9sbGVyIC0gCj4gYWJzZW50IHRoZSBNWEEgLSB3aGljaCBp
cyBhcHBhcmVudGx5IGFsd2F5cyBvbi4uLgo+IAo+IFNpZGVub3RlLCBpcyBNWEEgcmVxdWlyZWQg
Zm9yIHZpZGVvY2MgdG9vID8KPiAKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZp
ZGVvY2M6IGNsb2NrLWNvbnRyb2xsZXJAYWFmMDAwMCB7Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHgxZTgwMTAwLXZp
ZGVvY2MiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJlZyA9IDwwIDB4MGFhZjAwMDAgMCAweDEwMDAwPjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmJpX3RjeG9fZGl2Mj4sCj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZnY2MgR0NDX1ZJREVPX0FIQl9DTEs+Owo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvd2VyLWRvbWFpbnMgPSA8JnJwbWhwZCBSUE1IUERf
TU1DWD4sCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhwZCBSUE1IUERfTVhDPjsKPiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXF1aXJlZC1v
cHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnM+LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZy
cG1ocGRfb3BwX2xvd19zdnM+Owo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcmVzZXQtY2VsbHMgPSA8MT47Cj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3Bvd2VyLWRvbWFpbi1jZWxs
cyA9IDwxPjsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4gCj4gLS0tCj4g
Ym9kCldlbGwsIHRoZSBjdXJyZW50IHVwc3RyZWFtIGNsb2NrIGRyaXZlciAoYXQgbGVhc3QgZm9y
IENBTUNDKSBlbmFibGVzIAp0aGVzZSBwb3dlciBkb21haW5zIGF0IHRoZSBtaW4gbGV2ZWwgYnV0
IHRoZXkgZG8gbm90IHNjYWxlIHRoZW0uIFNvIGV2ZW4gCmlmIHdlIGFkZCBNWEEgaW4gdGhlIGNh
bWNjIGRldmljZSwgdGhleSB3b24ndCBiZSBzY2FsZWQgcGVyIHRoZSBQSFkgY29yZSAKY2xvY2tz
LiBGb3IgZXhhbXBsZSwgaWYgeW91IGFyZSBydW5uaW5nIFBIWSBhdCBUVVJCTywgdGhlIHBvd2Vy
IHN1cHBsaWVzIAptYXkgc3RpbGwgYmUgYXQgdGhlIG1pbiBsZXZlbCBvciBzY2FsZWQgaW5kaXZp
ZHVhbGx5IGFjY29yZGluZyB0byB0aGUgCnJlcXVlc3RzIGZyb20gb3RoZXIgc3ViIHN5c3RlbXMu
IElmIHdlIG5lZWQgdGhpcyB0byBiZSBjb250cm9sbGVkIGZyb20gCnRoZSBjbG9jayBkcml2ZXIg
ZGlyZWN0bHksIHdlIHdpbGwgbmVlZCBtdWx0aXBsZSBwZXJmb3JtYW5jZSBzdGF0ZXMgZm9yIAp0
aGUgVE9QIEdEU0MuSG93ZXZlciwgdGhpcyBHRFNDIGVuYWJsZXMgYWxsIHRoZSBjbG9ja3MgaW4g
VGl0YW4sIGVhY2ggCndpdGggaXQncyBvd24gdm9sdGFnZSByYWlsIGNvbm5lY3Rpb25zLCBzbyBh
IGJpdCBjb21wbGljYXRlZCBidXQgY2FuIGJlIApkaXNjdXNzZWQgd2l0aCB0aGUgY2xvY2sgZHJp
dmVyIHRlYW0uCgpTb3JyeSwgSSBkbyBub3Qga25vdyBhYm91dCB2aWRlb2NjLgoKVGhhbmtzLApW
aWpheS4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
