Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E49CD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 05:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNY/uKO9NiMI+aCK/UQmyNfY0OI/4guZ3QLHFGGo/Sc=; b=VoGkBVh7iVoyow
	cnvmkw9oBTkj0R5Vq1xWetY7x3Bgrje/YOnnJVCQ+h5UjMWV0P/BBOdkAL+XH40zAvnWYNauvMHkR
	kf0A7cBitd3hBNpnLZ/jAULJB0qgXUnyu7CRAiz8xLEo9o6iN4JtSKDz8WGb6s/bgRCK3fJCmJpeb
	LJkOZrawVizrRRbOmbZVu/prIS+pFv4G2n/KQZB7gTSKuBOFLyILLcDYqiiKC4/YhAXFoWd/u+LuZ
	nSzOGJaaRblaPk/tt8DUidcXUda4b6FFz1w4n3gVUb08MK6vGq224bQbTESBIzj2QU0G1/lbxfdiZ
	rGOmEyyeRiAArlvTClGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWSkk-00000002qnt-1K0X;
	Mon, 08 Jun 2026 05:42:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWSkh-00000002qnV-3I8Z
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 05:42:24 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6580GCiW2005712
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 05:42:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ufzga7I+3z8dNmCbn4BCdf+K+wlImg+ptma/5JYe8rg=; b=hR5qDZcWrXC+xQzl
	P8Sk7oLb7CBCBqsjwOM8rNWjxfrxvPLgQvSocdvmltik6PU0ywkw+Ce1V4yO94Rn
	u9BS56x/lpCZqPsYPOzXrE1ef2NgOk1O8hNCH7w4rB+AhwpSMr6aOF9zeLp9tZop
	yqujksUDezZAj97s7BhinXFewTL7/fo7HShifnnCv/xLAUDHGBdLvawcIX6MJJLn
	9nf1oq0yPobzc18BfDOVDgGc4HVVTST0kt7SPnayxY0jlV4tjE0GZbLPGe7mqZ6B
	ndtFPuz9odBZ2WvlJ9FriUVzN+6NTiePOQ17NEreafiyGMrNirBLPm3S2Ras0OS3
	/PcoKQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emb4w62ud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 05:42:22 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bf3636d6c0so42461485ad.2
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 22:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780897341; x=1781502141; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ufzga7I+3z8dNmCbn4BCdf+K+wlImg+ptma/5JYe8rg=;
        b=Z4DbobjkMEa1QNRsH23z625FKyQrBJAj2f9lyQo/WA/wssdUa6Jp58TqdEyJEaZZi/
         2Ua8P+uPma+qiw6GrshFhGHbzsYTm5X7qznGL53irzML7vOv/4HH+wa031P0ATNXzzRU
         mYFgYPzIiYmIYtIGU9RKwvLQxaPmI2l5wFKWio8bPa4qux3n+OLsdxQmDeHoazBulZEv
         o6vopU4mdLYJlJzI2rExQ0HpTtGz7We/Wt/DVG4Vxl+QCwuD9vZBOpTVY2I/An7qgiIw
         GKAAD/WOTDQ1Q9oDIaIgRnQF7ZwJ3PhI+kZf4MIIRSwtWdEYjWHCXatY1XRvt7IYBC3s
         SACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780897341; x=1781502141;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ufzga7I+3z8dNmCbn4BCdf+K+wlImg+ptma/5JYe8rg=;
        b=kM1TQuJoE/MvbiD/bJxrssUrssu31W2l/kOh5alIfuY2q2UxACm+imYCtRq9fZTANi
         /vIBgp1+eC7IEtQ0CWw6TQ6cgSJ24ilIX+/BY2onKSaQndKZm7qHYYtvf8U0vAIiLSFh
         t6t96e5pn5IGOh4KblyPLod8uNzK3eMIyhJeov86Z8AQ4zwoinEzK/D32bz6tfvp2+m7
         76RSFpwCvGkcyo3gQPH9vfwCC4Zxrr3KG0IyFvi841Vx16NaJJ07d8TusZ5wOFLVuBLq
         0PWQ0N+1BxjE/6B9a7CbLARc6UaEJX3Cs34/QbdYzVi68U3oFgNHTSHJBQ2xcXATJh2E
         fRww==
X-Forwarded-Encrypted: i=1; AFNElJ8Y0FkMdL/gTzflhms/iC/qU47Xj2HaYffOL6HXVQ4WBWvR6ziNqWLoLsqYgrGiCVTOTvKQEsn5v6k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzd9XdE/zFjfPkSvNbuVEvGtHUagzp3fzz6rJVKZKLz4RrxDJyY
	x7rGSnp+hfzPlzol3DJnQbt9yonEHzvO9eys7ZWQQoODM6AVndGFDGoCefxGtchIBxSU887Fh50
	I9ZRjwCrmLMq9eFNqDnhv1Qn7LRCuqwrm06WkadE7eYX+zYhNwRDoRafyIq7hzDj9CpWy
X-Gm-Gg: Acq92OFbO8N+XBVebLL5IUFEF5vge3/jmC3G3AxdF3ZBveq36ef8P4XiFfCnQgxwSr9
	5nOCI3zkt03t82LqVGrPbuAzDOEO0oSlBbjJwJBrrtlh5PyOrYbSWxyaWMWKDUWUZUGbQDmhOnD
	I0zVvReqcPjbap0r+5Hu+N16G8gkr94V4/Fs1zNsqSENafH2QZKor/yi2nO0QxikB9+7Xf+aWA2
	AfgHwQWQMFdTlXgFY1CFZfMHc3y/c1Nuy5vZVwVJHWHKxXL+ftzcl7016cV5Fq7MiLpqHGmFEeZ
	xnN+qwFzdUGQbF4vmbjC9Cq+PUcrY8LZsbOcIThlrLkiY7sGGG/NzCl6cbHNv4kf1tQv6F6psSD
	e1a8Q6bgzvd+HLsbGE+S/ixvbgzJ1/DqY3hU5OTu1418BRzbqHMpKUHO/YuCgNOkv
X-Received: by 2002:a17:903:2987:b0:2c1:88a1:9830 with SMTP id d9443c01a7336-2c1e7e74ecamr162938025ad.17.1780897341523;
        Sun, 07 Jun 2026 22:42:21 -0700 (PDT)
X-Received: by 2002:a17:903:2987:b0:2c1:88a1:9830 with SMTP id d9443c01a7336-2c1e7e74ecamr162937775ad.17.1780897341107;
        Sun, 07 Jun 2026 22:42:21 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c24edc8ad7sm40507255ad.42.2026.06.07.22.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2026 22:42:20 -0700 (PDT)
Message-ID: <29763928-2301-437e-8787-916930b64a88@oss.qualcomm.com>
Date: Mon, 8 Jun 2026 11:12:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Eliza
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
 <20260601-eliza-v2-3-6b44c9c23d5e@oss.qualcomm.com>
 <k37nby6lnczb5qajku2shpff4rsisyynlfmzu46lhojl5eiwqo@wkpy2tbeoa3b>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <k37nby6lnczb5qajku2shpff4rsisyynlfmzu46lhojl5eiwqo@wkpy2tbeoa3b>
X-Proofpoint-ORIG-GUID: Dvv4XgSOpI12s2vjbhKstmN9VQZpHcLo
X-Proofpoint-GUID: Dvv4XgSOpI12s2vjbhKstmN9VQZpHcLo
X-Authority-Analysis: v=2.4 cv=YIWvDxGx c=1 sm=1 tr=0 ts=6a26563e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=jbukJSVhv8iEu2CO0E0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA0OSBTYWx0ZWRfXwoeMP3BgTGLM
 79w08UKNkQY08cYY2dnyX61B8ZfwloInw+60e5Bx84H7SldFKQ229OW8PSkZPk18oOR+y2s+re7
 ILZP1uoGhxVVUUsVQp+Tl63pKsw1QSDpCq2dWHdY69rfBF03Bd8YzSEdJ8SCbFM8JDywwWsAXmX
 YwgYZlYSCsmTpeHkam8lL28CKFbhD9DCB+XGv66r6r3cvGM4oAtTkgQQ58xBRbBUO2xzewv9/Iq
 Ouw7ISH/h6IpNNw6yNI+exo4E1dVkr/HZgEmKgLM9rFbgsJzhJPBcywPGBR/4mAxFmLDobVDpJ/
 D1PtLbv9A+i8n+RW2MGE9UxRPn8pP6Gdme9Am0VD4S+sFW6Udw6+zsfmNEKp+ybwtBDIcHp2LyZ
 F4y84QRUdiVdgGlnPxh5Co2/kcIC+dBfbre1Chp5C8N3MgOEGmrA1JNr2kAB6VPkAn7f1xP7IRM
 no7qNy0ksvHgn5oTQGA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_01,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_224223_945258_41976E82 
X-CRM114-Status: GOOD (  17.05  )
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

CgpPbiA2LzcvMjAyNiAzOjU5IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
SnVuIDAxLCAyMDI2IGF0IDEwOjU5OjQ2UE0gKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIENodW5k
cnUgd3JvdGU6Cj4+IEFkZCBRTVAgUENJZSBQSFkgc3VwcG9ydCBmb3IgdGhlIEVsaXphIFNvQy4g
SW50cm9kdWNlIGEgbmV3IEdlbjN4MSBQSFkKPj4gY29uZmlndXJhdGlvbiB3aXRoIEVsaXphLXNw
ZWNpZmljIGluaXRpYWxpemF0aW9uIHRhYmxlcywgYW5kIHJldXNlIHRoZQo+PiBleGlzdGluZyBz
bTg1NTAgR2VuM3gyIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBHZW4zeDIgUEhZIGluc3RhbmNlLgo+
Pgo+PiBBbHNvIGFkZCB0aGUgbWlzc2luZyBRUEhZX1BDSUVfVjZfUENTX1BDSUVfSU5UX0FVWF9D
TEtfQ09ORklHMSByZWdpc3Rlcgo+PiBkZWZpbml0aW9uIHRvIHRoZSBQQ0llIFY2IFBDUyBoZWFk
ZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNo
bmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC1wY2llLmMgICAgICAgIHwgMTM5ICsrKysrKysrKysrKysrKysrKysr
KysrKwo+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2llLXY2Lmgg
fCAgIDEgKwo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxNDAgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyBiL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPj4gaW5kZXggZmVkMmZjOWJiMzEx
Li4yNTdiNGRmOTY1YzMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1wY2llLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXBjaWUuYwo+PiBAQCAtMTk4LDYgKzE5OCwxMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBf
cGh5X2luaXRfdGJsIG1zbTg5OThfcGNpZV9wY3NfdGJsW10gPSB7Cj4+ICAJUU1QX1BIWV9JTklU
X0NGRyhRUEhZX1YzX1BDU19TSUdERVRfQ05UUkwsIDB4MDMpLAo+PiAgfTsKPj4gIAo+PiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIGVsaXphX3FtcF9nZW4zeDFfcGNpZV9z
ZXJkZXNfdGJsW10gPSB7Cj4gVGhpc2lzIGV4YWN0bHkgdGhlIHNhbWUgYXMgU004NTUwIHRhYmxl
LCBleGNlcHQgZm9yIHRocmVlIGV4dHJhIHdyaXRlczoKPiBRU0VSREVTX1Y2X0NPTV9WQ09fVFVO
RTFfTU9ERTAsIFFTRVJERVNfVjZfQ09NX1ZDT19UVU5FMV9NT0RFMSBhbmQKPiBRU0VSREVTX1Y2
X0NPTV9WQ09fVFVORTJfTU9ERTEuIFdoYXQgYXJlIHRoZSBkZWZhdWx0IHZhbHVlcyBmb3IgU004
NTUwPwpGb3Igc204NTUwLCB0aGUgZGVmYXVsdCB2YWx1ZXMgYXJlIGRpZmZlcmVudCB0aGFuIHdo
YXQgZWxpemEgaXMgZXhwZWN0aW5nCgoqUENJRTBfUVNFUkRFU19QTExfVkNPX1RVTkUxX01PREUx
Ki3CoCAweEEgKlBDSUUwX1FTRVJERVNfUExMX1ZDT19UVU5FMV9NT0RFMCotCjB4NTMgKlBDSUUw
X1FTRVJERVNfUExMX1ZDT19UVU5FMl9NT0RFMSotIDB4MQoKLSBLcmlzaG5hIENoYWl0YW55YS4K
Cj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9WQ09fVFVORTFfTU9ERTEsIDB4
YjQpLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fVkNPX1RVTkUyX01PREUx
LCAweDAzKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1ZDT19UVU5FMV9N
T0RFMCwgMHgyNCksCj4gT3RoZXIgdGhhbiB0aGF0LCBsb29rcyBnb29kIHRvIG1lLgo+CgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
