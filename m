Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED653D711D5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 09:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEXXVlnO6wLAfVrxveyBQCNUycDaILN3/FYNcmkY5kg=; b=kFt9c9rUvkg28Y
	okP/WgYMRUFQB1Olz3uktDWIsnuNgv4qeuYCy7f3KxKI3+xOsr/tp5kXtjXenq64eog6w8ucdhWPe
	Vdnuqusd+BO80s8tTjVhzuGEbqQRMzsQs7oaoIgVv9lcVKx81K2xRCPkmgK7rCVDr1mtIau9wzvj3
	rdtAYxWClVg33IWnMqYwApduFhvHwb13P+VcZW6RTeikGY6FPi4EwacKIUCopp42XGr3M0GNL+Qgp
	aTRte3r0eNuptuy6a+aJMWWYeFGw0QgnevR8cnqZ90NeQHQodRPpSQFcLmpanckeQAKkvOtdL+duI
	YvnYN9BY0vT8M0ZCx4Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXc0s-0000000DVYZ-1sD2;
	Mon, 22 Dec 2025 09:15:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXc0p-0000000DVXX-1u7C
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 09:15:33 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7pGNW3935865
	for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 09:15:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tXclW4aX46rZnRIVsSHqBVnw
	Bj3pv8YCsnr1Ohovb0I=; b=kL9F0oe2hqbeC+xizDU5G3NSG2MS/+zfoL4R9kb0
	rI271HGOxxb56+ca6cHU3iAF+/Pg3+pl2PgVRQ/FsXZWQDUTX6p0SDvqF5yq+pWy
	kyPjBJhtpzJz6ob1CJJf5bF4m5mIGkdplJ7Ibn/LEKLzAdQHgzHVuE+3XXOo0iHf
	Lfzp9mEYSNNM54SYeM9F4aoWYtlzs8wYpuqflpMCREnNCp4/dbnK+aUeaF7MJTEp
	5bZeJFvgDVX79iB1Ne6zbK2uEAbRDTNQ63M5FHoEZw80nXAjCTrBEmQzBKXbzTPy
	vy4A2KKOV6SU6pcGsVTm0x9fOi2BzX9d2oxgzdvf+yDKbA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mvfmdx5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 09:15:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed7591799eso90734081cf.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 01:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766394928; x=1766999728; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=O8awc8IWZ3BFRn7+MJ9Vd/bR+R3VUX15+a37z7LlDJtKFsy+UdQ/1S0lXHGVCovBTK
         mp/c0bC30LYW3Ar2/iWzWZXLVtAgf9wLB/HM5Np4fcHJe+rK94OiI8fQqtKhyuxuYNac
         TDPEsKKFjzFmDdYCi9ityLs83MNo497mCitrgkixc0CCh6otwa0HC7nyUDqZFByAE3z0
         Y+FxZV7zRw/IQ43CbzqQT2r9b8X6RE87T5oabtG2B07flFey027d+CONDjsso4lvZznL
         xRcc6DcZ2SjBEG4ryd45qpuECEasEu1FtvnBqaPj4+5FjrXtvfXKzzYacgenIg6nWwej
         itWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766394928; x=1766999728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=ZMQEarDlFzdw6IN8BxjVaskuB++eKh6NhZRngAvNKavl+MJR8Q3Qrk0/u3Cjzexasq
         ZQHASqhBz53sOt2RqjB7X++sCTvrU97wYOqGb4e8Nmx56cjUh/6ruBsCE0Ckz17iJHFJ
         5Jn74cL+gLXHQjk6iJ9JPTvxhyhbR1aqTWAI3ApH5vl5YWYm971PQF6G0VloIgZQJgb/
         VZYsKEUd/cCFak3I4MxFvBTFoFodXKVDfBTa6GGCkGKvpykJzLFDuE+Dmtszw/mbv089
         hhA7IeiP6HBiSaFLyPlKsHUkw8Q9G3ZwwsGzcLYJpQCSvRWR65/Byi6TrGylu3qJbP7p
         njZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdaTQLhokbkjfreqEyT+eBVz9ipQffTfZBj76BaGa39XIS5zC1yohIm/0ofENxv3ds8vGE1WipMfA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDEX3OQ5zkBC8wxcg3orCyuqSM+kjo0gZrUKVf0vsNXRB4cNSk
	0IE+qLelEi1HXXpdPkXzuIbhiT1L3pBrgPgAv9045l5aw7ilhm8735UNQzny9rsJarSAUytlL2u
	v5yada4Emm/mfn4I6AYTGasFY77x9D++nZ5vZVETTKAtsrilu+a3aEuKTcFhd/v3D8KlP
X-Gm-Gg: AY/fxX7c2LkzqXCG6e4U+r8UDm53UTwBFzCvo7/YfuN9rYzeQknRLEKWroAEtAHRmb5
	pEZBBRnwB4+LzzSXOW5h4r1aLygoUsgtMgspyDvyGtDKMO1+JqJHuf7IyZe4wFrt91YjdDavkqK
	DgOvZAoxTXkOrIaFcsXOKQUe83XTry+pjJmrg0KHPFcSo/VVBuUxT8coAtQJmXosM5JjxvQQBPh
	Ei1V/C7kxHlujx66ccMnBMjKzFIiwQa9xq7CD67NKcuIPkRwVN0ezKnsHY3SFLx7HX7zdK559IB
	gGe2IlMG23E+OON4pFMKDbEKAA/0zjCq+YJQFLOPObW22LILrO2H6QHQ2JcL8pcxQYb6ohitrF9
	iTve/IjDD8/JCbIihcb5S7Q==
X-Received: by 2002:a05:622a:4a84:b0:4ee:2459:3d6c with SMTP id d75a77b69052e-4f4abdb5dadmr144189031cf.58.1766394928446;
        Mon, 22 Dec 2025 01:15:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHI3mUaLRUI/hNRVJZgifamB6jpBWNmC9mZeJbuHbHKFqMDYETI58XYsek/jvDDSeq8cxoolQ==
X-Received: by 2002:a05:622a:4a84:b0:4ee:2459:3d6c with SMTP id d75a77b69052e-4f4abdb5dadmr144188691cf.58.1766394927938;
        Mon, 22 Dec 2025 01:15:27 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a5c4dfsm1029081466b.14.2025.12.22.01.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 01:15:27 -0800 (PST)
Date: Mon, 22 Dec 2025 11:15:25 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
Message-ID: <gtagaq7a74nolj5sebulkfeimbiqto5mim4wara7hlupstjk7k@jb74w2t4pesm>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H8rWAuYi c=1 sm=1 tr=0 ts=69490c31 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yu3_NAM81_lDL6LZg7cA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: wA2uy6NbZP4VBQa5dTxofvGwWZwF82Zg
X-Proofpoint-GUID: wA2uy6NbZP4VBQa5dTxofvGwWZwF82Zg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfXxqR15XEDX3d7
 scMIL9/AHfgVkD7VgH/9hk8kQzlLCC3HSAhkrVRlQQVCTcLMfnM9QtHVHbF9mUySYdVRugju7VG
 RaNz05LQGgTjvKzcHLZWx5YEM2X7XmpuwfDVzWHD0SaxHSA7b6hrbH8fWtyN+GDqdLgSCyT8DnD
 U8t8K/qq+0sNQ18GuxhFx9wxfeW3v9+h9hSCQ/sfOx5IgdQrXSyULYHrLcdrxb6JorAELg2Vhkf
 hSf/JsEkNxq52tzaHlHZcOQvd+hhl2bcgzYwYYcRGgSKJoTjGpoonqOJSgfOrenXBLFBioZjcpZ
 vxx3JN2MwuD/FanGvhTaQ72/iurtL8GDz2pUG5mo5rxtYoU7TBSUIbaQtN2Y77uSLdi9RJP8FGT
 ZZnnDiQkK9YQpPeU7ghgXV40TfBlEH//Q2AIg828IEiZ0H/epqHFZQwQciz7nxcTZkTOUh2NB9/
 2t//Obu1U4X6/2uc7bQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_011531_693735_11F6CE19 
X-CRM114-Status: UNSURE (   9.02  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 25-12-19 23:01:07, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
