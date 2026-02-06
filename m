Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C05A9EE2089
	for <linux-phy@archiver.kernel.org>; Fri,  6 Feb 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSkcjIn37Cb3Q+Rp8SrsejmB5+p1tUTSKl+L0XpI73A=; b=WmenMVSJw1NPYv
	SxDJqmGdGVLR9z6gASNqxjGdHPYiB9k+sqIgxEhw1L3aSOGSwy4z7wpH5rFKFfhGK7y2ndNUAharv
	c8tU+JOYj3929ML69xiv5ws37EfR6a2oD+jy6yHrgUT8uZcBuKvU4jBbc/DN8+Xiot4jcC8SB2V6c
	hjxno+r3B1Oxk9KtPcIBdpSBTn5l7V6UcHwrFLymxFQcCYoAXMiCU1Hr4wWj4cF3rMD05OQBYZ1n7
	hXd3m+ZSkpYVcP937yJVvzYaxb4Po6ySOJS3CNc1XnSTrQs5XCTYT87sWkroT1hLqvJ2AJmGFuDzd
	sYGtjks78r5eXq1hvBMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voJN7-0000000BCLz-1YnK;
	Fri, 06 Feb 2026 10:47:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voJN4-0000000BCL0-3pGu
	for linux-phy@lists.infradead.org;
	Fri, 06 Feb 2026 10:47:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167bRvX4041873
	for <linux-phy@lists.infradead.org>; Fri, 6 Feb 2026 10:47:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WiUpfxIFCkcoZA3dEemDTklxSz1/qDPkP10QtK9mdok=; b=H76+S9tJa0+Yypck
	TAXs7XyvPV/fvn8YBBjc6TwsY57q8gLt4jIgm8cmJlS6TyiXSPHxm1jwjRfdJcf8
	7aWN6lnB0p5h+Me0mxkhaXs+XgfExHpbO/Hx50JeUDDZdkMgP2S+C07cdL61AeCc
	b7yKc4f4XgNgcKY0ec/POychmPtq/5YfPusIIDGArAcZZZApnO7RwCzDMPgojOPN
	/WqipRxjkdEGHNWiU2kPdDtijAlS3YRH0QgbdOJIOidpzjb4ZigRIynOLxapLCYt
	H/CdG392reJlQPWn0DfDM3Spq8Xo8qATtKi8j4ieqoN3MO3J+/aKgva+jVvlxbhU
	m4BU5w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w0n2j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 10:47:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88882c9b4d0so6120916d6.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 02:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770374848; x=1770979648; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WiUpfxIFCkcoZA3dEemDTklxSz1/qDPkP10QtK9mdok=;
        b=NDLGtxg5sl4JxebG7vH4Ka1SJoiDi/3b1NReHXU4LUZ+t/Nu8RPHeDs2EOGG7rK90l
         UeUU1MTTGxBl7GqkAasqglqY+phxdULm70g4jAA8NQekFbVT3/X2/1r7tKM7WltCJHLJ
         go/3qWxhWLWCUEWj41UoyyxCkBWXkzRNmZwnvvE30zSN9rv2CidIzaFLcxZt9S7mavYB
         YFpSSj7H+v9rb/UW1NkXIGprt+pPo6mlpdurtQZ78OjDmZYixe53Ihscv6aupUpe3SwZ
         izF7XKastswToIaLA07MBqNe/kqr/ar+vnT8FRJg9c3o5iOgy7FGiiLoEUjZtuMchy0P
         /Byg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770374848; x=1770979648;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WiUpfxIFCkcoZA3dEemDTklxSz1/qDPkP10QtK9mdok=;
        b=cVTACYtcnYrenfiNLs43lVIzdnNf5o5oe7QUwd86uJZQGV5yoNAPJG1Nq4rISqO2AM
         mMMGWYy08q5BfCdsMjZBlaCI3E0K+Ww8q8PwK6m8ds6bAoAzNwOdaeTm23eI8CwPQeJZ
         yHXyvLho3AwWuJx605YoZNafSiSVxaHb5t3EgSvShERKr60UpABnq4lY8JCme/BkFL9C
         dOlhVKD2tu+H8FSZidcLBmDdLi6zPN4WpPW5yN/3xGKo5A02jT2c+mol/i3iJWcHxDte
         JlCMRuYeD+J8J7pSqNCr4rB7oKziqf0k5wu5GGqn1Sl/Rhy7jJe+UOfYdtFh5HhzZsu/
         CVmg==
X-Forwarded-Encrypted: i=1; AJvYcCVw9FQZs65NRSK5EiuczEDzyymXbjGHKSBmrxtzAAJHgOhCDK3PL484MR0xeJn/Nleqc8h6IF9QW1Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnogrzZ5TwIBt1VTfr3mJ6X0ObsPR/0wERKndZMxgrcH++GFxq
	oT+MusiyHsYWpmBRPfnkwdNwoIP04KHwY6vWdt3X7mBKpJ3wA4IKSX6z+6skckPf0XNBneK32Rn
	ovCyXWzZbG5mMJq3LJA7Hfrp6F32zm4HO6txKpl2W99uY3Zbk7EM2m7n59+c2vLefejd0
X-Gm-Gg: AZuq6aLQACfeCUXfiS5qsSX96iVCxoHVLaKHsow+y1eX/C9Fu05X082ZndR1hV1KtQc
	IZQte2jXV45Xz6656OjE80c9qKcX0/ZmpfkDx8g0IDhOcI1erPfTm8DI9jAB63jE10U63FnLYPE
	OXmJ24rXT/hfaIDcfih6UQWYXTTu5Akg9PQh0KO9oWbe9W6zOpN6iUgNCOLYBufGhuSM49Lz0qy
	niJxMaCD7mge0GpbZUkeyYm/53dV3YJZxg+4yiAJz/rJ8Ej+lWiGZ8/RO0BhEwR8plfmP3JmJVm
	27BBJJM7NIJauvSW2gfLUJpIX1wYM0GKLbbhrHzT9mIFEKucqbTRrKW7UlRVUSnKZMiFPUdYxku
	QISL0tRP+59HhMfQmz5OxinbZJEeKytfgC3BH+ifKAXrH0Qq1ZkuatsVcFE1Yf+G06wM=
X-Received: by 2002:a05:6214:4f01:b0:894:9671:7aca with SMTP id 6a1803df08f44-8953c59c29fmr22939926d6.0.1770374848464;
        Fri, 06 Feb 2026 02:47:28 -0800 (PST)
X-Received: by 2002:a05:6214:4f01:b0:894:9671:7aca with SMTP id 6a1803df08f44-8953c59c29fmr22939676d6.0.1770374847992;
        Fri, 06 Feb 2026 02:47:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6598400f182sm430909a12.20.2026.02.06.02.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 02:47:26 -0800 (PST)
Message-ID: <1b78ea12-84ba-467e-b541-1ffd2348f38c@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 11:47:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo PHY
 configuration values
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3NCBTYWx0ZWRfX0n6o6etD0HnM
 sr874JZv1Fu8QiDJqwLakqAsP8gO/LzHpPFumAtkclI7df67GoygEST5m2pFqmoORMpEj8UFGz8
 dq5+Rt/izS6wjKRTHF5OkBRpEl9i8zVjTGhsf58t68lzxcK22BQTqBR2SeGYOS2lCoGM9rZ1bFI
 ZFoxJ5BiUug/73/VF/XZgimiWG+45tk76kepyv5OC06MZ0pAlZiesN5IryO04m+dR9Zh5NwcJMI
 VSksHT8GJj4WGcY3J6uaj5xXsf1/81od9GD5BL9brhd9WhQcWeMj9huJZmhroJiim/5EGz9J0eg
 lYukJVRHuirXOPKWGXiuk3V9wLiu3wcUPAtR4oLlWsFzCDbxedyrTdn5L7HwJcnULfbyqsLMcNq
 3YVOMuuHUp8xAxd+EJWrhb4ubK3XnVjbcGg5j/5CvaHrmWmDSE0oRkmzH8GH28r+o/0FXM1eT4I
 e65LPelplmcESnww7og==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=6985c6c1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=5a8lAwskDaFuyyoYeSoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 3fm9csZtZCd05LBidBr6M3VzIT2NGHS4
X-Proofpoint-ORIG-GUID: 3fm9csZtZCd05LBidBr6M3VzIT2NGHS4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_024730_949766_DBACF0C6 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

T24gMi81LzI2IDEwOjIwIEFNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gQWNjb3JkaW5nIHRvIHRo
ZSBjdXJyZW50IEhQRyBzZXR0aW5ncywgbW9zdCBlRFAvRFAgY29tYm8gUEhZcyBjYW4gcmV1c2Ug
dGhlCj4gc2FtZSBjb25maWd1cmF0aW9uIHZhbHVlcy4KCkV2ZW4gYWNyb3NzIHRoZSB2YXJpb3Vz
IHByb2Nlc3Mgbm9kZXM/Cgo+IERQIG1vZGXvvJoKPiAJLXNhODc3NXAvc2M3MjgwL3NjODI4MHhw
L3gxZTgwMTAwCj4gCS1nbHltdXIKPiBlRFAgbW9kZShsb3cgdmRpZmYpOgo+IAktZ2x5bXVyL3Nh
ODc3NXAvc2M4MjgweHAveDFlODAxMDAKPiAJLXNjNzI4MAo+IFRoZSBjdXJyZW50IGRyaXZlciBz
dGlsbCBrZWVwcyBtdWx0aXBsZSB2ZXJzaW9ucyBvZiB0aGVzZSB0YWJsZXMgYW5kCj4gZG9lc24n
dCBmdWxseSBzdXBwb3J0IGV2ZXJ5IGNvbWJvIFBIWSBtb2RlLiBUaGlzIHBhdGNoIHJlbW92ZXMg
dGhlCj4gcmVkdW5kYW50IGNvbmZpZ3MgYW5kIGtlZXBzIG9ubHkgdGhlIHNldHMgd2UgYWN0dWFs
bHkgdXNlLCBtYXRjaGluZyB0aGUKPiBwbGF0Zm9ybXMgbGlzdGVkIGFib3ZlLgoKSSBzZWUgdGhh
dCBlLmcuIGVEUCBMb3ctVmRpZmYgc3dpbmcgc2V0dGluZyBmb3IgUkJSIGlzOgoKCQloYW1vYQlr
b2RpYWsKYXJyWzBdWzFdCTB4MTEJMHgxMgoKSXQgbWF5IGJlIHRoYXQgdGhpcyBjaGFuZ2VkIGxh
dGVyIGR1cmluZyB0dW5pbmcgYnV0IGl0J3Mgbm90IHJlZmxlY3RlZAppbiB0aGUgZG9jcyBmb3Ig
a29kaWFrCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
