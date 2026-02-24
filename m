Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC5BEFB806
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuEnnX6fVDUzrcbVVyzODgrwa7S9/MSQ/l+y28Y6Re8=; b=UTMVduUDj6c5u/
	8yWLvVCM1Lt0bszXgcm8ezCY0dqItHLcYmdfbULCoOmHZIBmyJPZ777lvtzaLPUDClLJJHMFULtpz
	ytcFKKOlf70To83J4HPRcH1/YdV5EnKATSB7OE5c4Zz9LKwyH+Oz+bq/7FYTJs3QRVRi3wiVE+RmX
	Js9fF7CxOQIxw5tMdUI2rA39v7IzfcygR0qaH9I7d+Sf3XtgkXTFR1f0fl6+K8Wu+Rct0dxq8zG1s
	ql6iHw9FSQLcRNB44JFkx6c+YKuCqvVaLULt++etf9a9ZAxk4Dxz9KsSno98tUVXZ97ZsOdQqSfkE
	79q6LrIOhw4d0Ed+zZEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vum8D-00000001XfS-0oM4;
	Tue, 24 Feb 2026 06:42:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vum8B-00000001Xf7-0hBj
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 06:42:52 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LdKo1807980
	for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 06:42:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cJ3GaypcC9G4k9TdsHdr+XBC
	k7oILCyCS/oWUhCgxLQ=; b=ZQoOmS3niQ7Gaq9Kh/qkSdITOrkaccTsFWv+5yn9
	vJ+sBGymXpBP7GPzFC/uvjX0TZYCTX/TPHztcOwW0o4khukxeEMRMIVlt5fHpEvB
	ALryPc0zHkISLfQNCt1yIsfmtvMLn5DzbXeikSh9PQAB/U29LdCpDCxcIFl0vxh6
	v91mSFSomMvEjOQfUk3K+C0CE/BfOupQ3OQZTFIq2Sk+1/EJVER15LQhI16VXlYC
	HnwRu0D/uu9ity/DlExttW33UR+vJkphaZTLp4IiPGsLVOpiiolYu+lS1wrfWfbY
	a9G7lPDhdLuTUi9p6H/peAywqYQjO7yP7JWQYAPlzzBmkQ==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4e38dhh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 06:42:50 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-45f0bfd68a3so21221847b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 22:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771915369; x=1772520169; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cJ3GaypcC9G4k9TdsHdr+XBCk7oILCyCS/oWUhCgxLQ=;
        b=WRA86a8W64yxW3hxdQWF3pbilH88XGnxma3lG5JDLeO/jz6+hJ1uk94m1e4BbMtZ7R
         VndAJhWAAF5lpjWE/QtRcZnO1MZsVuuzl4oS5TpDQcLYlMji8hGQ5bMK847HfA94+GfA
         mfIdF7lAA4VcDhH+dui2NrvMIQVEZYyBiE3dTG8vtoZQyeMOSZTPsgllpzBvBSBO7SvO
         rNq6zyFMtAtsHirvrlCBKkNRQGL7za+BqOTfdjTzUe2b5ZziSxuntwtmwXn32Bsoc1FK
         HDdIsiAOX24JXAo/jh6hR9CiZ1CAE6buzgzrTijo5e+88yjyvJGC5pGTV/V/xQx37B7s
         s6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771915369; x=1772520169;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cJ3GaypcC9G4k9TdsHdr+XBCk7oILCyCS/oWUhCgxLQ=;
        b=FVzsTLnRlM9FOBzdtthBo0sAerIM0/KawMYjgBzL6eNMSluH+4U7N+Il6xP0XZuDbZ
         Eq2agbbbjj5R00sVV+Qai8/Zhe1MIzjMJ+zAUNeXkwRspxpjmwrD+UAQ5WxSSc7Sx4MM
         VI74x6UQnmlHTInWk3x1d0HwLC1KIbxVvttRuvZvfld2XBlH6J9dUF1PXMPW7zFSNPVl
         VH6z1digrVQopXSnpn6dRZImUBccgxE2XpNhxcij2X/Ecy1FEKI0Fs5ElY6Qzeixy2Gm
         21m/GBBOkw/klptQYBF5B37PI8bEb2LDpK9vSAkwAUCbrvFDeBAbl+wfpDkO/VFn6E/L
         oZOg==
X-Forwarded-Encrypted: i=1; AJvYcCX2itgfn0GDanNP4d8nthdLfeL/4ewP1pV+zJPPAP8zsuGCkTJq/sfnsI4cRQlzpt8ubfSsbs1YNDM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMvTXz5Ix4yLq0VL+WaTwZn7WQQQmGfvHSCShFIbME81EqEd/A
	sxgInVC6U5oDcANMj6j3ivA5Z3RrvI+donNg497WoyvJ79To9UlgqZn7q1hQ3VKBujgCqwDEy+L
	ibodSNMzKYGRzTjfqTU/N8F37MlRiJudJ5v9Pp+Pvi2jbO0zjHCDgS5bjH1ji3e8aa6rK
X-Gm-Gg: AZuq6aKyiQH+mE+7f3nqRPPUyXzVm05xPxiOpVuTegnPim4JR5TjSm3aZxFuWh/uMEk
	UsekDkAodxYkPIwLj2m9+PSVdMeNnAHrZCoTmXAFtzu/jFN7o7dk0asT9HbbcBIIr+KfLJ78Rel
	SffFSAcRzszhzBMdwx+Lz6U6f7e4K31vnVzCIOonRVda9f6Oydq/As7qCfUcmPUMZxVLbVPHjut
	JEz/qI1bC1vNC7vxRZOCsRvDmos+MfcYjiY27l4BTLVn8JTiN7gELOD2XX5uvB9Wh8HQwDZDETe
	HkNyQg+GT8R3ybtg//8x5NMsHSO06Tj638zHrFr4hBmVZUOJkAUK6juemlOsMsuIEQ8arP1vhSp
	QnFJHOtLcTVo2+5/bHZpyApNECawskFgmT8H1IQ1dsZrcmi6YuxtVIo2Vs82vdDSv3BDq
X-Received: by 2002:a05:6808:1596:b0:45c:925b:5848 with SMTP id 5614622812f47-4644635b16amr6539146b6e.45.1771915369539;
        Mon, 23 Feb 2026 22:42:49 -0800 (PST)
X-Received: by 2002:a05:6808:1596:b0:45c:925b:5848 with SMTP id 5614622812f47-4644635b16amr6539131b6e.45.1771915369129;
        Mon, 23 Feb 2026 22:42:49 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4644a1aef6csm6500238b6e.15.2026.02.23.22.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 22:42:48 -0800 (PST)
Date: Mon, 23 Feb 2026 22:42:46 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
Message-ID: <aZ1IZsrzTLAvxg9o@hu-qianyu-lv.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
 <jvitdcolh4naqjdahaajlzdctcmp3sy5odiheeqacps6pcbg5t@zx3jliileazg>
 <aY1KCLDDoQtLJ4F1@hu-qianyu-lv.qualcomm.com>
 <hi2znbyo5tunwi6du5ifxjci4xmjvfz5wrbikqs7yagpt2rhki@il4g5olkhkvw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <hi2znbyo5tunwi6du5ifxjci4xmjvfz5wrbikqs7yagpt2rhki@il4g5olkhkvw>
X-Authority-Analysis: v=2.4 cv=UtFu9uwB c=1 sm=1 tr=0 ts=699d486a cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=fBCqObQPdmQB8sgSFtYA:9 a=CjuIK1q_8ugA:10
 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-GUID: kAMUC8oJlTXAPLmgJWxqjSnUiZeCl47s
X-Proofpoint-ORIG-GUID: kAMUC8oJlTXAPLmgJWxqjSnUiZeCl47s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA1NiBTYWx0ZWRfX9iY/YFRPMG8C
 H6dANxE8nAlYnQuR4zOen7aLNDwUK2DBL2iINZuxYNbE76Eub1q9gAJStC2UapTfsOBTnh1ddfq
 mzJ056BK7J9wleAMt9eXHjtllVEyZPYKi++BhgDUGBifGSuQ8WrS8m+Ow5gd0tm75p9tTdCq3E3
 npPIHRHKeQCcjhceciulxbk1a+xJxsJ3a/nhtfhyp4YCv38akMF7BIEbFhRhAm9GwVta179R45R
 ukPzCFM0hfizZvpylG5JP9jZuvjcLbWWjFNUzriulA+ClQshHQDNksCfMBAEz/SuTe+vkJNVh46
 SPURJRqp98hzo3DFzlqm+Aj/EqixBd1cGL06b6XJQedFP5x2t+XT8jgGeI/Y2cDf+DBqNr+5p+P
 dFLCi0RhxwqG4uq/ipfNtTj5/jzMXpzc/6O2r84gOTnN6FadjjeMIlzGL1oa3UVQAc+abb+Tqhi
 fN4t0R+BShXdgvfVcIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_224251_345961_8F9B8FAC 
X-CRM114-Status: GOOD (  22.71  )
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

On Fri, Feb 13, 2026 at 07:48:23PM +0200, Dmitry Baryshkov wrote:
> On Wed, Feb 11, 2026 at 07:33:28PM -0800, Qiang Yu wrote:
> > On Mon, Feb 09, 2026 at 03:15:24PM +0200, Dmitry Baryshkov wrote:
> > > On Sun, Feb 08, 2026 at 08:49:40PM -0800, Qiang Yu wrote:
> > > > The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> > > > two power supplies independent from the PHY's core and qref rails. Add
> > > > support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> > > > glymur_qmp_phy_vreg_l list.
> > > > 
> > > > Update both Gen5x4 and Gen4x2 configurations to use the new supply list.
> > > 
> > > I'd ask for the DTSI patch too...
> > >
> > I will post dtsi patch after we get agreement on how to descibe refgen in
> > dt-bindings.
> 
> Please include DT patches in future series, they help us understand your
> changes.
>
Okay, will include DT patches in future series.

- Qiang Yu
> > 
> > - Qiang Yu
> > > > 
> > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
> > > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > > > 
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
