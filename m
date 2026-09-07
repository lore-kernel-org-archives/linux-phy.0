Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD3E3C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 10:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzFLokL6jb5vMxr1cCOw/wOCghG72MimEU7o7NQ6m/s=; b=2vkB/Ailb9pGsJ
	HiXZceuJe5Jly2NJA6Qkj/bUEF/fkQbPQ930IGvYzY78BT1kQG8XgVJEGFAZjtAzM/5dbgfDzX912
	Ufq7ytf9Kuk5y0+Z3livbbMsDfPZLz8YIPZj/rG2cI4PkN79AFA75V6LKbExRiixLUqwS85928aa7
	JJdx6glJlEaxtp9HlcmUKGpUM0rIrkFVYrxX2AQ5MTEkHX+2zUmWohw+IFcT1A5V32y1ZvC0DES7W
	udloq6cLm9MSuyNoQRIq610sufA2RsmjUvJMOIrrt0h68AiYxgOm5IopffBz5xocfzzBS0caSWY2/
	AgqRn2nNEJ3sXByUMDrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Wny-00000006VYA-2Kmq;
	Mon, 07 Sep 2026 10:42:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Wnv-00000006VXb-36pd
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 10:42:24 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6879bh80319110
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 10:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qpyEpJBVtSyYB59cPODVufFyZlVpTWQhTeLIXPfAKSE=; b=OFoXXChXRPt+8y1t
	rCu9cL1pFGKGkTKvKxdZBRV246LUlczAHolkAGwlz1CLhkvfmPJBwd7cKR8xCal1
	tyQaGXQ3sJBf2SQLq/nHMv51KLJxDmpBvRyqKp03MyCQ82PCVb8UguX2V+r/iIwU
	uT1H2WjsrGqudOP9JCXb4sZg0xSJtyTK60AAmkTD4brzfbiCwxL06IQg5OO/aLtm
	Dd/Qrqbwymo22eh/Z20F6GNI6hK6KlOHYyQKZPVxnff8xP5dqXVrT2YnQaD6KUf7
	8DPCVZHqJeHXccoKfoYJhTjdSWHOCvt0Fi/dWKOnALyESzp+pqKKLq1DYCCa14Tw
	PjMpGg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghfwjjaba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 10:42:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39aee9b4cf2so5458305a91.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 03:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788777742; x=1789382542; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qpyEpJBVtSyYB59cPODVufFyZlVpTWQhTeLIXPfAKSE=;
        b=DyMxKcEdS+3gfPRmRwL1MPS62l5tzZJ90Qydqa9pmOJuAg/Zp/ulDtXPa+TJa8gwit
         9OLgovR4RDGnmlApuirJ/zjJ05VZ8BNLu/cvqoMMD0O6EY2fma2n+J09WibT861RQiE6
         zPu/vT27jC3ySH1kghyCxDMd7mzKQB+NMHiVq1T2mWFZ+yeQmaQLyaMXuTsbR0QMqO8p
         Xte1NT1FjVXz7cyxpjNaqx15zDZrFHlRhrL+GdqWzG+VnETcpjS0fZaVLEMEF+g5gRob
         xTRwYtq/DWB1RkP+3oUJV2CCEe+SjcNLCCWIC98nVpHhiF+iWAoDSQ2Q5rYXFWJhDJeW
         /SvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788777742; x=1789382542;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qpyEpJBVtSyYB59cPODVufFyZlVpTWQhTeLIXPfAKSE=;
        b=bIsa9K305CHsVV4cY1uZZv6uw+iL3WgKngSUikhNyViqiOxXQsigzEt5kCAqyMA637
         CvYzHm0Ozu48P2lNlL8xXHYvOGu0I8UZWz+zx6Vpp5MRcIT2PkX8dx7+VZA9guk9aDm6
         O2U6FXffVAdn8ItgvHX4Ed+s8JMJt+5uqLsegnpNiBz7CcuCGlO8ZeoxyzqY1aJuhl9Q
         qHy07+XFMaXf50OoyQgI04lx8Qgt+RtxliisuKNi3JWHi2qPZ1JwGGR2oYSCKIeQhFqL
         aKwIHWl4YsVl2hR9Th241wIUfBnmrZ7c5IFkMc1greKnMbxkhcjqKUKnZcRW/7gYSci3
         vdsA==
X-Forwarded-Encrypted: i=1; AKwUvBw2Bk+QdZNCo61z9Gvenzc7DdfpoziBvv5Yi6Ddq0aH1UlZdpSKbsCihTu9iKlG4Ges02STiilJ6+k=@lists.infradead.org
X-Gm-Message-State: AFuF++krcJ9RX+wJMotSO8To+rVnDjyBtTJUHYCoynwg84pVctot1NHz
	Xsz3S52vueJn799pc/FPQE5nOK9JgZ5BkajkosdmFB/aPpRUiECNOoyifI4CuNL+nwDXlRvNxTo
	Dc03gSjR6zZMazSV+lGC5acP7JgHJ2AN0XZLsT8OFfKrV+FRqVEqNUjQCqQHHjp64DZbZ
X-Gm-Gg: AYBFou1WaJqq86jSDsocwgIPjcGC1JrdKtzQOEDbT63+RuVF8Lp4wvjm14TFu8HSKLW
	kUsSfWAonAhO6hOGSonJrwud02wv2HihG+FE0zedIRu38g+MtuRUKWpZBtiJStCt+hUl9jesIAe
	p7Uy7E4Dw0xwzCI0Ay0QgXPgL2EGIsFCeIeg0smgKOY3qimvCg6UwdFdlVvEhMHSpOMRiSlAOFg
	QtZjjhBrwJOgU6E45JJd258AcVxh4nj6BvGlnu1nj5EgBcQCOOBv0uxdAl4ormZyP7mSornbXlo
	iUa4IABj7z2zHMUiBq8sNe6Qv5HRtlSRTuFxnbwBdS2LpWt3uDrqQoA5EsnGzJTWkrqv0qC0Dyp
	6PdO2DG2Dw6rvs8aILyC+hQ6qWqO0
X-Received: by 2002:a17:90b:4c51:b0:38e:57a3:f218 with SMTP id 98e67ed59e1d1-39b26204e5bmr31098728a91.13.1788777741852;
        Mon, 07 Sep 2026 03:42:21 -0700 (PDT)
X-Received: by 2002:a17:90b:4c51:b0:38e:57a3:f218 with SMTP id 98e67ed59e1d1-39b26204e5bmr31098665a91.13.1788777741381;
        Mon, 07 Sep 2026 03:42:21 -0700 (PDT)
Received: from [192.168.1.11] ([103.211.19.41])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1432424d27asm35559357c88.2.2026.09.07.03.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 03:42:20 -0700 (PDT)
Message-ID: <9ebc94f1-3ed8-4a21-a84e-ccd46f044927@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 16:12:12 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: media: qcom,glymur-camss: Add Glymur
 CAMSS
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
 <iIEI9RqdlqSAwrBGxsv48s_r9QoTRP_IPoifu8PCol261xGqyCULXGQaaMYndhNAFA7YAzraXTr-UzZhguWz3g==@protonmail.internalid>
 <20260907-glymur_camss-v2-2-75f7982dc983@oss.qualcomm.com>
 <3e619085-3311-4acd-9493-e849875563d7@kernel.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <3e619085-3311-4acd-9493-e849875563d7@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDExNyBTYWx0ZWRfX3NimhixpJ0WB
 797WHsAqrTSiW7diFV8d64Wc5l22cWYDcgKXLzD2EEDRbXaHNXeiRutjtrwXMXlRqwoA8zj79B7
 RoZeL2D39v4rCOBzpT5MCjQ4bkFJy6k=
X-Authority-Analysis: v=2.4 cv=NanWEWD4 c=1 sm=1 tr=0 ts=6a9e950e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=HcLy/BXbbKFjgnJyaMb84Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=trIvJVA2E7aHKB3H3pMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: GsZ8Xs8R5Ac7b9E1v1JTnD2UUW2NLc0V
X-Proofpoint-ORIG-GUID: GsZ8Xs8R5Ac7b9E1v1JTnD2UUW2NLc0V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDExNyBTYWx0ZWRfX2uG/HO4i35uM
 jyV4INKcndFLnPcD9WYw8qGYQRBw1uHRL+sgMxIquPaIw5ikXN/ZFpdKPWc/RNeZj1V8VxoBMFS
 z7p5GXnvDgOEc6VPVPt4M3SdjvRJ7VN6Nf5wUEaRtbXywo9i470t8gV1sfuguouR+xlp2hswp/U
 zH9aZCf/J/L+DqrQiWKC7Qda4M46HXkYFyTd4ygjq0j0kVoyAivrfVefA5ELnz6cCQUmdXcAUw7
 0cDQqm2mzH56bjJLsvVzxdDGzyvp30Kr6CdRcWbJL7jZfKY4mJwcARmk8ah38xzWSkoJSFRhHTA
 KAreVRJc6+dA5cAvn91T2dSo9dn6LT7mcVMMSiWxUzMdXvPh5Aeck8GSLS7DETWHTOkUFffrGXq
 W7dv4GAowaIZ2JSVZcQiPI7Lv5Mp6Y4ZUKsQoa2q0J22VB/GskFAbwl97xsOpUH/1xvtyOdqZbE
 cgDVW23zIK+dWjiE1aQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_034223_788316_9AB30092 
X-CRM114-Status: GOOD (  10.56  )
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

CgpPbiAwNy0wOS0yMDI2IDE0OjU5LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+PiBYMUU4MDEw
MCBzdXBwb3J0cyBib3RoIHRoZSBsZWdhY3kgQ1NJUEhZIHJlc291cmNlcyBhbmQgdGhlIG5ldyBQ
SFkgQVBJOwo+PiBHbHltdXIgdXNlcyBvbmx5IHRoZSBuZXcgUEhZIEFQSSB2aWEgc3RhbmRhbG9u
ZSBwaHlAIGNoaWxkIG5vZGVzLAo+PiBzbyBwZXItQ1NJUEhZIGNsb2NrcywgaW50ZXJydXB0cyBh
bmQgc3VwcGxpZXMgYXJlIGFic2VudCBoZXJlLgo+IAo+IFdoYXQncyB1cCB3aXRoIHRoZSBjb21t
aXQgbG9nIGhlcmUgPyBUaGVyZSBpcyBubyBsZWdhY3kgQ1NJUEhZIGluIHRoaXMuLiA/Cj4gClJp
Z2h0LCBHbHltdXIgaGFzIG5vbmUg4oCUIHRoYXQncyB0aGUgcG9pbnQuIFgxRTgwMTAwIHN1cHBv
cnRzIGJvdGg7CmNhbXNzX2RldGVjdF9sZWdhY3lfcGh5KCkgcGlja3MgdGhlIHBhdGggYXQgcnVu
dGltZSBieSBjaGVja2luZyBpZgp0aGUgcmVtb3RlIGVuZHBvaW50IGlzIGEgcGh5QCBub2RlLiBH
bHltdXIgaXMgbmV3LXBhdGggb25seSwgaGVuY2UKYSBkZWRpY2F0ZWQgYmluZGluZyB3aXRob3V0
IHRob3NlIGxlZ2FjeSBwcm9wZXJ0aWVzLgoKVGhlIGV4YW1wbGUgc2hvd3MgcG9ydEAwLzEvMyDi
hpIgY3NpcGh5MC8xLzRfb3V0OyBwb3J0QDIgaXMgYWJzZW50CmFzIENTSVBIWTIgZG9lcyBub3Qg
ZXhpc3Qgb24gR2x5bXVyIHNpbGljb24uCj4+Cj4+IFgxRTgwMTAwIGhhcyBmb3VyIENTSVBIWSBp
bnN0YW5jZXMgd2hpbGUgR2x5bXVyIGhhcyB0aHJlZQo+PiAoQ1NJUEhZMCwgQ1NJUEhZMSwgQ1NJ
UEhZNCksIGV4cHJlc3NlZCBlbnRpcmVseSBpbiBEVC4KCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
