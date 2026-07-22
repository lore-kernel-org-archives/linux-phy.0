Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C1B2C4451C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 06:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWlHSR3BKR1oSEVFuVlQqoDyvsvTkimZF53uVicNV9g=; b=hMNaSfRRDHhAM1
	w0AyeEbn8BCXmoGuXUZSxkp2M7pX3fre4IuWHOvVedCnxxnhW9o+rhv7jCQjqPN6Ujacltd7Bo0f5
	bX3Un4ME13kbdnQrJE9u8LtmGME22y6SQZk5Y2pXeyhP88wqYPP1/Y/mBUBzASfWPSQHqEedA/snA
	KNDpGeNKKmMj5oDNpwFqFoiQnpYOQaSetXgsV5VK6tMzN/ISt6ywLKf87q68LrkaEx9fU/lEY3BpV
	W4HHS8Idmi79xHShX+jPTOFVU4P08KsSLUmw5izC0Va7oz2n/qbDyZCyThS3fTbETsw7N+rVooug8
	1ag4cGR8nzQaVfNzLVaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQKz-0000000Axsq-2X3E;
	Wed, 22 Jul 2026 06:21:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQKx-0000000AxsO-127n
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 06:21:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M54G8a3474603
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:21:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fSR8cxfbjrDx5wDPjTiMdNNv
	rDDTqrjKaq1jOYu++oA=; b=RK++QXHBsod7F31zM41VJPW78anuEcvrhF9O9fda
	yr5w2RpkHjW93SkEJrr9oP39eedSRjI5y8UFilCSj8cGYFnS6tJ29cgVqJYTCelK
	fLpREq/iVKLchLvhlN3v0rRhg3af2w2YHziL485e4tOnAX0q0Y5F58TkEs5apiev
	Cp8BTulgIFLi02fimCPpe7s5as9/5y0v9Taz7YCHoX3e6gbhPtsJ07OGjjGRBKeI
	x1u4e3FhprEvt5qOGFFAs3pNTLuPt2rW+MbjcFutTkmwffTva545YVGQXLTEFn3Q
	+QuDeZDvKej+5xYFSfG1OuHMW+rRVeoESibDqdt7x14sMw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6ftjc6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:21:46 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8f000e221d7so184134506d6.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 23:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784701306; x=1785306106; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fSR8cxfbjrDx5wDPjTiMdNNvrDDTqrjKaq1jOYu++oA=;
        b=WK/p6jcExWDg5TXNlKnCuK93Yo96JJWaV7lZDkt2dXU5VTzGc+IGbcBBfRGzqkup6O
         fKgK3a8inC2l19+eBX7KGrBCpavfNsh+uZTYImjQQiwW0HHdFgTnsJMwgghOeot2s2Du
         gB62NlCih8mnD/2zpjxZrnFn+IeebsaM8mlY0POV2SvshAD1VAyJI3bSvUGUFrhLL8yS
         VuO1xxBCQdOKxTfUc+jCUKAJx7sNLU0Y/uTUiKPFoJpa9iCwhDCOXh04BKj2xBjgLwYr
         TlYKdDvqHAx9pmNzzdXscqdEUEUm85hp0Mhy0UTbLuWNVnFLeKAe3IAKY+Oa1IiQcfHV
         S0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784701306; x=1785306106;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fSR8cxfbjrDx5wDPjTiMdNNvrDDTqrjKaq1jOYu++oA=;
        b=kPkBvgfUfF0bt6hyLXx1sNIQhK4xGT3FmbojwtHVc7Bj86E0FS1yaDHhE/Djk3VPea
         cCLh/4Y9vdnj3dcS6B+gU86rMslEh8AtkUsUbuJnkU0DMM8+L+PFaPTv1NtX/eBOQrZ1
         F+/KU9TaP9HEQZq61bJRgvNad4D8XPLADlt7x5ln2u87jNLzudYDvP5OUIblNSwOanXQ
         a1WG6cu5DCcutfQ4aofyedYWd5zvzBGtrwIdMA0atgkTq0K2TLIowH77qYTGIzr7xDRA
         cgHJ3z7xezT3a/Mx3sAzFpu2o79sVCkkeVcYH04a26tN25K0OVumIbz3TZrYOBwrRvzx
         FHYQ==
X-Forwarded-Encrypted: i=1; AHgh+RoFiieHUh1FIVzgYHeZ9TbSzc/PD9D0bb2V1gCcloChZa3BzatiRW0Ai17GAUWV/0TGasZDrYvVOxw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAmNZN85uICrDQiRg5sAy0bCPcgRthLBuEFmogrdLQwPB52qfU
	ZlBHm8KJXIAJtMCClUS2bnOy+cr432vzioirekl03b51NhmL7UpxZH3fWbJNbJ0N3hm48gP3cpF
	w1VdYA38vHbEWwuiiAoMzRENjHzP7fGPajM4/sSpA+AwwuvIOqMZKDiKc04oRMSNwOHdW
X-Gm-Gg: AR+sD11vjVYbwDrmjzRd7QER9gwtSoMQDpOcXfvCd6AKpj7I5V0l113bJWydDptGXU/
	8cU12R6z6Go1Bmtbl6Yd0AYHlags10pGK4n1X5Ok3BhAHsHTblUv+VKnguF3aU+yd9rAiA3vlbd
	t0ZjTHhb9czT/7f4PfK0pQ9D+bkQd9yc2rLePtcipn9ym8dYE0M6G+0o+6lcLTTpa0oBZrfE5SI
	IBClt6lhMuonxKUcsGQwnXMYmSnM3mBv0RohwuWkz1BuXF7t7JiGwjCBAuCfsfAVxLzwn/yif9+
	sYcgu0BRA3f9nMOrQLOXXo9eN5Gw7plwmr000svCcbSUWovPs48I8ShgiSNTwuxowZspAnfWpDJ
	04OHsRBtNR7Gd2o/qy6F4wycX5spo1ERskTU1umuLz0Wcj8RdfM3yaxOVdUQD19mSQciBlRPrDY
	E/v+GbP65qyGjYOg==
X-Received: by 2002:a05:6214:b6b:b0:8f3:e97:59b8 with SMTP id 6a1803df08f44-90778387d8bmr228608016d6.29.1784701305476;
        Tue, 21 Jul 2026 23:21:45 -0700 (PDT)
X-Received: by 2002:a05:6214:b6b:b0:8f3:e97:59b8 with SMTP id 6a1803df08f44-90778387d8bmr228607816d6.29.1784701304957;
        Tue, 21 Jul 2026 23:21:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39ef6888591sm2595881fa.5.2026.07.21.23.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 23:21:43 -0700 (PDT)
Date: Wed, 22 Jul 2026 09:21:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in
 qmp_v6_dp_serdes_tbl structs
Message-ID: <sjvy2u27dxljx46iu5pqvtze6snrqnljmcs3c45gt4ckeuhwub@34mbkowlmapv>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
 <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me>
 <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af>
 <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me>
 <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk>
 <47b1db2c-6314-49ce-a7b9-f68eeb022295@proton.me>
 <zd5wulhfcw7vzbwaz4akhetbqqub7ygsmexuswkdvzxcfmqvqa@hom4ax54efft>
 <8066103b-e1de-4b20-b21e-533a6cbc2bba@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8066103b-e1de-4b20-b21e-533a6cbc2bba@proton.me>
X-Proofpoint-GUID: L2vy8rZzdFJZfP6iQcKwATmZaePhBYed
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA1NyBTYWx0ZWRfX+1/qmz8qUNpc
 E5YyT+b3RxwrKQnySDCeBE1Ey0lMMF2WwAq8Y7k1Z/soJiyk16+qmp57RWmqSliln5Cj0ACQrCJ
 znLHo+y6JR3QkMI5Fg1gD1pu7mQkQmvg7Z+F3Iys3Ql3hELAQ2F625UupFfC5sw0EBpqwt3UNeQ
 xE/gEG3fvdMQzNczP1K7hpTL2DWfOBYyzQlV/pImc1uwYUBkDq5kn+jSO9Z2ZIbrsyaaCpZWtGf
 vIT3hZDLdFFrxrtGwaFSOtQ86J9etiWgWUj63VOofi9zrmrENwFr/KDGclisVBUlWlLU/Y0Px9T
 CHCElYTEpRVThacgPDFhk058ZV4PchDMuK3J+TcqiE5aaHRojXFmCnn0zXI4tgAabDYbkzGVMu5
 I57E/f4nXBj/tMPGKqoFC4CIrNZ4rQ19umUPDKcrpIuFR4kx3qvlmZbTVei+qcCRxULeocTO1KU
 8/BMTQJkfaLobdVve3A==
X-Authority-Analysis: v=2.4 cv=e/o2j6p/ c=1 sm=1 tr=0 ts=6a60617a cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=ws2oWbXhS7LMuVARQf8A:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: L2vy8rZzdFJZfP6iQcKwATmZaePhBYed
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA1NyBTYWx0ZWRfX8/imKBv4aQOl
 WT8hwANS6t32N7OZ+/QJmOptLGaSIpH7HqH1s2AYIFuVDP1F5Ns1mnCb5ZhqAbbI3zKp/ADYpM/
 FN5fC3a8mnes8rEPoDtkvaLgQCdJCn0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_232147_293315_321A6681 
X-CRM114-Status: GOOD (  20.17  )
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

On Wed, Jul 22, 2026 at 05:51:39AM +0000, Esteban Urrutia wrote:
> On 7/22/26 1:34 AM, Dmitry Baryshkov wrote:
> > Yes, because the platform has different refclock. 
> Sorry. I think I've lost the thread on this one. From what I've
> understood:
> - For this commit, v1.1 tables should be left as is without renaming
> them.

Yes, you can add a comment that downstream uses "4nm-v1.1" PLL type at
the table or at the PHY definition, if you that it helps in future.

> - For the third commit, v1 tables (DP serdes, RBR, HBR, HBR2 and HBR3)
> should be added along with a comment in the driver explaining the
> reason.

A reason should be explained in the commit message. If you think that it
helps, add a comment about 4nm-v1.

>  
> Please confirm if my conclusions are correct or if additional changes
> will have to be made.
>  
> Regards,
> Esteban
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
