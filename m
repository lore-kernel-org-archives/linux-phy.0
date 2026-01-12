Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9953DC9EC97
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 15:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJsDBye4X7sGrXTU6NsmleTN/XZS+kA6erPmGdGCFz4=; b=BFoM7uqUGaaWh6
	xzq1+XRWN3TkreNQDdKjuuTFQZTfP6rNhqa1VK+Bwb/TOJbs8J94OJM0P04htWS/A21lfn+eReIX+
	Iz/P6OvdtsdLhmBWY+jM/WDFnpUcyuxhK4A2RUbBC+iG/04s58ntHP0W2ZiIzNI6Jn6EtQbx5CRHb
	29tvrWWrqV2Sj7t69KTwiRB+tg5VW+B6Un0E459m7hnFrZuN/mb4K+jxL5eF1vgO4Nhhj0rbpPlgV
	KdMqQWo4+jTFzUYBNmqRvtrSs29E85Rk2nzTxkgkvrKz4Q/gIPGkxzJ0bFrTFk4YuLTj8Pf0TaNYP
	sp8SjlMb0pPW0LpQOQBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfJZ9-00000005cDM-1Y9t;
	Mon, 12 Jan 2026 15:10:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfJZ7-00000005cCA-1AHn
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 15:10:46 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CDItRN556393
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 15:10:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j+TXB5m/vF5VDCTbQgIiA0PaQaqBi0gn7fcOA5B26tc=; b=cDEa4vxSQpmfjHmN
	0sn2ZAzMlMTC+WdDLvFF1OioXN0ReCo8UuxFuU8z6rhbtP3Ut7sGV5pQHp2Q/2g2
	8sSPFsZzahBgiun6y9f3FW6stQcnzyh8Lx00u6XxFQvjtmfjHulZyb0yLPx/MYyr
	qYsyGU6Qh4OECT5EFMn6pFhMDiCtS2GZj0uYZaE2dtdeTjQPMU9eWpVk2fLj1XfN
	yRduUDEQA/AB6xCzg/rXGDYiycBwaGM13AUksOwDmDWhdFH1DsDgoTyIQwRbOVNU
	R5KcHlm1OMVjtrEDzOV+H0nlzj84SqwSvnXrmJw23wl3WqSCV3Z+jqMEA6DRsD/P
	2Iagow==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmvhw1dd8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 15:10:43 +0000 (GMT)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-78fc5b493c8so86146387b3.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 07:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768230643; x=1768835443; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+TXB5m/vF5VDCTbQgIiA0PaQaqBi0gn7fcOA5B26tc=;
        b=TULkflXZSLGBzUrv45X3tcjSB3In4qozFbgcUajC0jnQ+LGecT44G7krunmTGtJswF
         ApAR8WroCQ1OqPH/Kz4o1jGXKYsgmAo2LNPS18Gku0KstNq1GDnSC3D3FDU+++n1ro06
         a4n0AL9S+J6bVLAFF7uV2+J6Q8l/jNu7g4OWeZ9ffw6j3DAKK/smIMAEMRlm7X5aEmqZ
         OAoDwFohCiagYojoWyW9o6Is8PPK1tD9ItinWvay2PWGgEEmSC+BT032nEiFMyb3YNS/
         39jqLc7u/74JWNHEudDijxu4vEN0JoS7QNIaaqeA7Qsc/zO6hag6XjdbJ75cy43PZjZi
         56uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768230643; x=1768835443;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j+TXB5m/vF5VDCTbQgIiA0PaQaqBi0gn7fcOA5B26tc=;
        b=R6EqkInb0s9fMCec1orTMKwNvXI+iGl3tkHxTI8gKKR6/f4wbxtiZslk2oJ/I7hp57
         nvG6Av5+1H9E9GFs9vgAU/Vk9CJInF08MfvXxtlGKEeHQB3ikEEB/14rPqAklUYXUFFC
         2vBu+xj/p1Iz143kV+87VwyLt/rMOsUyygQzdFtPb5huNxUPN4bJdqUtP5F521vnDjZI
         q64n+G5Tw8xR+MCCVzfRCqtu1Uk60wlXk/+la16xBF7Fzkwz6DEJxBcy5VVPbxKSyFc3
         SWdOelDUdn19sA3XfujrOn8IrkIDvIKoKaw0eYD05iaWNTZl/64L+pyGkuOjGw2lgVh9
         U0VQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1rPjPgW8Verb1p1LMeaFahIWRbV1SsjI6i7PMHBdPz3PbqVHDJs7DcXwmwF3IaUByDxMOFH+meq8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpuqQGa+StK5LCQTYlR33se3AKK0BEYo0MP85I8Trn1aoUshqd
	a9JgK15e0QtnFJ/JNPF+hTQGFffbMOKRv2gISe+MHCP4fEupenknvX9aS/YMz37mMS3qg4JfcRI
	KUaKrRTVQj401FuV5ESdIR3PPU43aIX2SyKKWFrHJZNnC8sAJnSacpqdQFWJ6YcGb4UxPFug0T+
	hRbTuPnw2w2ph/F20UX6PfrZ4KfTyXw8NU+6NQkPYYgQg=
X-Gm-Gg: AY/fxX4jznwjIUZlCs0tBMoRMXBZ2PV9YiuEnlFAJI9Ws5qNEG1ArJYkz73LybPd8tY
	6MoSfrmTapEgpf5A5DinDcv6B2etH6UUksiqhzjeScpDH72um90d65HU3OG+BeHttGID5tUNBfy
	AHLhyNz2JaXpFKD1OwmAfLU4PhKNCS7+wsb/Klk9eI5pf2mpL6AydU2PjKXjl0/6gYqCA=
X-Received: by 2002:a05:690e:130e:b0:63f:b2ca:80e1 with SMTP id 956f58d0204a3-647169b381fmr14415961d50.0.1768230642766;
        Mon, 12 Jan 2026 07:10:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGb9k3409ATzMPrfctYBPA6sAFJ6KBcx7duI0v6qPBvcEaLLBBhG+aV5B6vji3+2MGPaLh+cbpyKIKHtQTnMRw=
X-Received: by 2002:a05:690e:130e:b0:63f:b2ca:80e1 with SMTP id
 956f58d0204a3-647169b381fmr14415939d50.0.1768230642248; Mon, 12 Jan 2026
 07:10:42 -0800 (PST)
MIME-Version: 1.0
References: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com> <e51e8665-0245-4ea6-8c09-c73004a34a3d@oss.qualcomm.com>
In-Reply-To: <e51e8665-0245-4ea6-8c09-c73004a34a3d@oss.qualcomm.com>
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 20:40:30 +0530
X-Gm-Features: AZwV_Qhl0ITcawgfXsQ6J0WuskxVhWHEkGKvw1sIfGJzrIxJtyF1YokdlrpOrks
Message-ID: <CAEiyvpqHerfzRcRRasG7Xxv+5YPzcAEO2rNsbZK1Y081jpwNPg@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add polarity inversion support for SAR2130P
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDEyNCBTYWx0ZWRfX4zXxUmXPr2IE
 Q7+U4Ub/uRkVQ87J7jSmJE7qtVKFkig2HBtrFemi05BTzJJMw8U5VqJ14E17DSNOxOrl57f21TG
 F4USAwXgNgVgPgLoXXvXIqIvPlzH9eXGD855jrx9cLmZT86iJDu+XhHCGFkK+7+tUN5XzJc60qH
 D9HtRcbSm1kOFgzmuv6S2eVIg+r3sKKxbnpXVwiuu8tMxUoggYPzLIuZU7USy4dJSbuOCsdSZ+0
 qeFv5fI0X/OpVaPYoeyx9ED0YhEZTfHFHgLKEnS7IeGyWxanCARfc2XoPQ/OvFT2V5qUQyROYre
 te6pNOd7lp4wh0N8JRfpKYjfxr7Xhkf3d8kbFV3goXJyzV7lHJmGWQTE9Y6cn21iG3vzofzWrNw
 zwwKYXKiTZe3jnFCSQyZCAjrRDuueXwdfyT89JbXGZAwrNE5ubdopzprbun3p7X/xILNNj5e4X3
 3y/lGTmjqpHrxm/B9TA==
X-Authority-Analysis: v=2.4 cv=JP02csKb c=1 sm=1 tr=0 ts=69650ef3 cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=n3BlUNrEoRwJoBZIV1UA:9 a=QEXdDO2ut3YA:10 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-GUID: nIHdNVTK_jsKcpSyeDpOPU-QRRUIjFvt
X-Proofpoint-ORIG-GUID: nIHdNVTK_jsKcpSyeDpOPU-QRRUIjFvt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_071045_330408_7F2AA4A2 
X-CRM114-Status: GOOD (  13.38  )
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

T24gTW9uLCBPY3QgMjAsIDIwMjUgYXQgMToyNOKAr1BNIEtvbnJhZCBEeWJjaW8KPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiAxMC8xNy8yNSAxMDozNCBQTSwg
S3Jpc2huYSBLdXJhcGF0aSB3cm90ZToKPiA+IE9uIFNBUjIxMzBQIFFYUiBQbGF0Zm9ybSwgdGhl
IENDIExpbmVzIGFyZSBpbnZlcnRlZCBhbmQgdGhlIGxhbmUKPiA+IHByb2dyYW1taW5nIGlzIHRv
IGJlIGRvbmUgcmV2ZXJzZSBjb21wYXJlZCB0byBvdGhlciB0YXJnZXRzLgo+ID4KPiA+IEFzIHBl
ciB0aGUgSFcgc3BlY2lmaWNzLCBCaXQtMiBvZiBUWVBFQ19DVFJMIHJlZ2lzdGVyIGluZGljYXRl
cwo+ID4gcG9ydCBzZWxlY3QgcG9sYXJpdHkuIFRoaXMgYml0IGlzIHRvIGJlIHNldCBmb3IgU0FS
MjEzMFAuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBLdXJhcGF0aSA8a3Jpc2huYS5r
dXJhcGF0aUBvc3MucXVhbGNvbW0uY29tPgo+ID4gLS0tCj4KPiBUaGUgZG93bnN0cmVhbSBrZXJu
ZWwgZm9yIHRoaXMgcGxhdGZvcm0gY29ycm9iYXRlcyB0aGlzCj4KPiBSZXZpZXdlZC1ieTogS29u
cmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+CgpIaSBWaW5vZCwK
CiBDYW4geW91IGhlbHAgcGljayB0aGlzIGNoYW5nZS4KClJlZ2FyZHMsCktyaXNobmEsCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
