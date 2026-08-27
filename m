Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4403CC61DB9
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 04:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yq0Dwu5z6ko3gM//gPD7IPjhzjTe6xctPwlAJdgXvS8=; b=0Bsn4y800Wv5+T
	yt4ZMC6hTYgS3UCUravqrEAQpsoFthIhIRJXVfGShdRLsEpbalyrH6mwXKRgiPOUiK3srLau5NcX+
	zcup+XUOTNdJ5TnNTATQTzb7AgFNBBOQ1gwSyRR/V61f0UieRg3T0eFN6p2t2wNTo/PkYBwqmza+E
	YPDoOVaTlYhsfVk8DtOsKxI+lCbi1g3hC0wrrZsG+CH3vQrK1o/tC9pYv3BisRqbRQkMPcPnoKw5b
	NUuqkXMMZHW3X2Fq02W2SY0TJz7FVJftPG77zA9WtjVKdwSycdUYpiFdCN8OFw+6To4Caime4YB3j
	Q/qnxSpFvZJGRPTEukcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzRkG-00000003O9n-1mIx;
	Thu, 27 Aug 2026 04:29:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzRjq-00000003O80-3NzC
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 04:29:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67R3Ix2v1665963
	for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 04:29:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PBQfXRXdbtZK5RC0SQJwvsCn
	/rM36L4ZzGVrHyQOUFc=; b=XgXC16FktSQa/UqUPSEbVSrpYisyPDeMD2X7EEVe
	JINfReQlMl49naK9CZbIU0IoazGhg62KSI7f8Dr2m56BVInzEj6LPazArqZ4B/VC
	RV5LrHpjaNVIEejYsODazVBneNsgN51SlCS6jkXWzXQWea8ZgvrJI2RK5aij3Ab/
	2ChYg0HO2o6wes2iuK4so2VLdCA0vfdfVccpzGPWJnTdKAeQCmtICwMKSmwaY7+P
	uFfOYOcYsfpt+WXu+aCnsGHLJOOXuvYuYOj0YSq6Ty4y00oojljtNqr/3KCvdI5R
	QYRBAF9FrCvmuOiEcnH218uDDR07vYHPTn74ivrlKntF1g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gaa3bgrrw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 04:29:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ce7dfd33ffso18401275ad.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 21:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787804956; x=1788409756; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PBQfXRXdbtZK5RC0SQJwvsCn/rM36L4ZzGVrHyQOUFc=;
        b=EG5duP7bYxJqmVHlZ+tvMg7TemRuVfnXveFnOwR1KNr+0GO7O0JR2MWkrwWhgomuvK
         c0s6S/um6CTb1h49WvM/exxLjYxI/WNlvuN7g6RK01tAN0jYNfCasI3pWEhe0x8HAJcu
         I+yaRqpinEi4xFSM6b6Kbm7JjDZUAKuA4rTea+oiLq+K22JUIG+OmjDW3PrUwwfhUALl
         Yiuzu6HldhPxODDzpgWlv5jluw9a+NCT7zPo7XdpwM3pCrfxJ3VPJPRQcV1zuYo3Lo+x
         Bipl1B1s/tP/L4PpT6ANAin/DPHcFafRZNUM08LH5/zA4rHjX9BQVI8FTf2Nio2i7lMH
         haLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787804956; x=1788409756;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PBQfXRXdbtZK5RC0SQJwvsCn/rM36L4ZzGVrHyQOUFc=;
        b=ZDxGFVW7fR7fXdU9r1EaeH/KoOJdQM4N6GCgDeNDTq3L2sj3VfXYEM2EB6p8AM16Ee
         5hCOQTdr54rFwkjgNmfDsvh8MPpezbQvS+LzkhQXZ5EkbwZrKRQCcCGSZY4lK0EwZNLL
         bugqhhj8JvepR1cyf0fdP1OOy7aEJYuO9eh08RLCwrFU+RYdBVSGvFXIhD/aL2/EHfoQ
         nutW6fm9G5ghM4lpRVrUal0XdLrMz/puHoqUjjKkqKpACy5EIT8qDUiCoFmWR/ex7KFd
         iQpUoDEtkQg8xXS2SzUit0fxjKDUCji6aaTOWdd40k6LYsCa/01vOTcQvP7JeJJpvXs7
         Bokw==
X-Forwarded-Encrypted: i=1; AHgh+Ro9TqRkaSoYtxmcvfbxUwos8qV8K31cm/FhtvbVIZ4EBe1OaVK//4mLKiPL1vvsqiy+1EbA5KYOGlw=@lists.infradead.org
X-Gm-Message-State: AFuF++k46cqeKJcWGOIbf9dBQkZ4jU6XbelK90S9Hd2AaV8T2w6jl+bT
	0mRqAQ6+QUhNtmw6c2lweKQef1SQsRYL+pux59BN4VoNKuJUhmXLmxEImcCn0vLOj1HCmD9JuK/
	oW26/z2vYglQgFEHvH/3q1JFUxBXuPGIdu3PR5ZimYw1XbZQCSJenIuS7BnCRXNhLPo2W
X-Gm-Gg: AR+sD13KnIKpWT5nFJw2OYjDVwYMK7UMg7jTweNhBs2PH9V6lLOTU83qZ9853Unj/WM
	1XNXPsFyv/v0eLsKE6FPiFnHpaWRUBoxs0HtS3ArrfyGgaMxCJuK+oiC1QCQb4T7pOQ1808+pIJ
	Y3W70T4Vpw/86/DyBLLuR9+Od0jd/+1EFFsc6ia293kiWd4zQPWAHOo79GEIAGjD6JQMJRoMEHW
	FN8tF9cMz73QzV1CV0XG4nWAkN2C9jTn4XlrWOf9zfz1A8WDPtMDLbZkaYXG4/y+J1Mu8bKzKZ+
	NY8oDHlYcVYhJ4s3ujylyM0a4XVlhCwAmjDeLUJpdKsJxWYjLnyvMzJLujiznbtFPtnNzabnt6g
	rywHLVoIyPOaJUJCMa33Ly4ims2TRiRZz1b+gJTI6dmb3rv5/J6ZalukZnkmsYyjS9496hWKyv0
	hvMgrls/xGtOn4hH8P7vclXWw4e6EDjA==
X-Received: by 2002:a17:902:ef0a:b0:2c9:d88e:f996 with SMTP id d9443c01a7336-2d707ba9460mr232937785ad.9.1787804955896;
        Wed, 26 Aug 2026 21:29:15 -0700 (PDT)
X-Received: by 2002:a17:902:ef0a:b0:2c9:d88e:f996 with SMTP id d9443c01a7336-2d707ba9460mr232936955ad.9.1787804955469;
        Wed, 26 Aug 2026 21:29:15 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3283d885fb6sm13901932eec.14.2026.08.26.21.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 21:29:14 -0700 (PDT)
Date: Thu, 27 Aug 2026 09:59:08 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] phy: qcom: snps-femto-v2: Move PHY init registers to
 config tables
Message-ID: <ao+9FOzw6d+hjDyB@hu-varada-blr.qualcomm.com>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
 <20260824-phy-v1-4-257d68a3210b@oss.qualcomm.com>
 <d3d075ac-598a-4b79-8d59-556657edb23b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3d075ac-598a-4b79-8d59-556657edb23b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI3MDAzNCBTYWx0ZWRfX0d79PY8TqQLw
 Op9Wa+3/mEgZNQh30uwAJSkjfpXDtn1xneL5Tht5wbLtw6FY9P/3BitgzMwExWCEktyjBTPbU/A
 jSR316bT15Bbv5Q10Jy2wkP5OB6djavK06x8gDeupQ/JeU7BSZpLasBe3Sl8BHTHrbJHCMdsqSG
 k5NEheoo2Z5kKg3cyVNteY6sPSXwVQvFvvmnGI1szIbmsQE0pdv/q+K8oTG+mGG0FJX/gVSD3qt
 EAVr008xF8V6ZVS3h05qoBDJXiLs4vWwUNAjB+dfMorXEqJTnPNMDz68FZQ+3BBYVQH3C+nTdW2
 kifahsp/okb0OuMhCBf487Kcw5x8FE7hl3K3H81lar/eSLs6e+ApOxVyVK9Hyv2Q+64lvKwH4eO
 dXsfQOS45YD91E+QSKCZkNDBv2rdz/xIfmF1HuW+ie4Jdx3FHckCMEAhAJkZeCSgZurBoBVkn8a
 GV0N0IDU8EN6IfumKnw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI3MDAzNCBTYWx0ZWRfX2gklchVTLLyH
 EEoRBRztoK6kYT+nFf6LlFUK7RJhEYmO/QjfrU/J5aMtGyFZnktJrbqz5ZHrhp1RVjX2eKvvlIy
 vki5dZLyKAqjz7Hkr5/fOlD6scaPrko=
X-Proofpoint-ORIG-GUID: 8y83lCX6MYvvxwnrPGwsUJ1W7qeC6wI8
X-Proofpoint-GUID: 8y83lCX6MYvvxwnrPGwsUJ1W7qeC6wI8
X-Authority-Analysis: v=2.4 cv=KbfidwYD c=1 sm=1 tr=0 ts=6a8fbd1c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=Bgcfhj6G1kAcdHnFx8gA:9 a=CjuIK1q_8ugA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-27_02,2026-08-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608270034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_212918_964820_588B8349 
X-CRM114-Status: GOOD (  18.33  )
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

On Tue, Aug 25, 2026 at 10:54:58AM +0200, Konrad Dybcio wrote:
> On 8/24/26 8:37 AM, Varadarajan Narayanan wrote:
> > The driver currently programs the common PHY register sequence directly in
> > qcom_snps_hsphy_init(), with the fixed register writes split around the
> > override parameter handling. This makes it hard to support SoCs that need a
> > different sequence or different values.
> >
> > Move the fixed pre- and post-override register programming into per-
> > compatible configuration tables, and keep the 7 nm override parameters in
> > the same match-data structure. This allows the driver to share the common
> > sequence while adding SoC-specific sequences for future platforms such as
> > IPQ9650.
> >
> > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > ---
>
> [...]
>
> > +	for (tmp = data->pre; tmp->offset != UINT_MAX; tmp++)
>
> "pre"/"post" alone are not descriptive - perhaps pre_tuning/post_tuning?

Will change.

> Or do we maybe know whether the order matters at all?

I believe so. This seems to follow the order given in the hardware
programming guide.

> > +		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);
>
> Custom termination is both error-prone and memory-inefficient, add
> another int to size the arrays

Ok.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
