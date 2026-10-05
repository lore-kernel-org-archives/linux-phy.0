Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29E56CA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 10:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahnbs2Dq3XHxGKRJe996yPJCTbVmdBrmBZy6qXAsPxo=; b=PPebZO5j6NiNzx
	YB1ksWMXSrddu5576hrddKlry9QtrqO96TZlolAB37BUvCQPkVI1zdBGf9R+vXkdXOG0KWiWr+REU
	+YfVRARuVVh0M0iXSGbZZ2m+MoYuE5pTqKxcOdorO8QB+lIAZRG8JLhvElr/HQQh7FJd7s1Gl8MM/
	dItJa50Ye7QbBfsbMSIo6XtpYWxLuK3PSl1uWa5nuJXbRqrwjKy7/w3p3y5gL1U5YoBYwOPm9AA5P
	p6Kb7OGVjW1bwVCv+kxB52t50YhYNuns8b9Wmp3O6tc+IBTtE5IPfHJQQucMhqD8LL9m3EvKIstp3
	WpmHMVi5X4Sw4I8kQZlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgCD-0000000GDLe-39mf;
	Mon, 05 Oct 2026 10:45:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgCB-0000000GDLG-1HmQ
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 10:45:24 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6958xO4I1470406
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 10:45:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pQeClRWL5fMnV+jW+MgQGB0s
	7nSB8YFmEBzlXVtXF7g=; b=jJR9AuEvbL0VK2nl5a38FNlDKkChzxp1nZsKcG/7
	qXezKMQxYRBlj9igqMX7mlEvTWA5ESLdkAAkBHthWwd2LPNlrmg7ODkkcXtQ/nnw
	AI2zPgwsm5L/O7LE1Eu7y2U8N6alJ/OX21qZWSle0BLV1fGACI6NOLABApPUNZCK
	4cExS5J9BVz5O0ri3GAoORoEytWMUHBXNgmJgoWIRhkjpszBftt/tQAKQrl33z0j
	hMDBuz9iXAjHEGPjx/2hNwhqArsjLovpSPFteMfjBmGYhKv2YnLiGfNlg8aH6a/z
	m4tuD4QCeeKOhhT7s88IazqzvDW1RyHF/ZS/XkborU+3qg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2ssudh8r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 10:45:22 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-139b62317d0so5762773c88.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 03:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791197121; x=1791801921; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pQeClRWL5fMnV+jW+MgQGB0s7nSB8YFmEBzlXVtXF7g=;
        b=jmdan33VKmAwP2GwFVbkyBPtLviTFySmd2yBVH55W1qqdVZAG5P7R5i7Qm/x75+A6m
         vEbKmnzr5/DNIyJ7/YAM2UTliSbKBVjn9++0RuR+bswVUQu8YMJUBFoWBsvwDpbG1ajX
         AnIhcV915TKyNvt+7YITrYypoY2jhBjpsOZp4jfhZItCEfV0QeiC7G4FGKr+BUJtw3D1
         DXLdia9kY4YIHWMqQe6mcoBIoerDMWLL9KStbpkbGsPBLGlhNZATBr/qQAlvfMiEuZZJ
         56bZhPs/lQVMFq3gAJChxza3FaXJu0DRgsAOvORLOhD6y2cEo2i709tpqWzCU0JrSqve
         A+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791197121; x=1791801921;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pQeClRWL5fMnV+jW+MgQGB0s7nSB8YFmEBzlXVtXF7g=;
        b=M4X2tuDqerNkc9u5di9iJCqjNCW98d5j+m4l7cGKCXpO54iaFgLR9wtc/gcln2Auv1
         dAs+73/ragrCNcLDskX+dR52XIlnnHcBmxu6fyk7TAHjT17an1jKU+F0ZMYBntHn0f0r
         wFO8PhlPQ7y+pFvhgyfnmMNSMWdt5blQwwt9SyR/Lwrv/KatSN7CQmB9Qq/i0XfRvzGa
         +BUO0NIRQopIKr+oDFkujmuq3TziN53eQv6Wz6e0O9iZOACHO2LJgCy9DZs6C4AUczlL
         iZONvqVd1PHmOqqIXcbKDfGoPkSs32c1BTpNs6YKMi4r3P1hu3uEaRIo+nFXAqWfp3au
         HWSg==
X-Forwarded-Encrypted: i=1; AKwUvBzBQYNGqZsQdPgLtM25vRwDH5tPktJ/s/cRk3f4tjZZJ6y+CtX9cqlxurnalj/MRkd3p3Gpabf0xXw=@lists.infradead.org
X-Gm-Message-State: AFuF++lBoAUItgRAm8rYbxLnOc+0zP6TFBgaTYP1mzjF0xAqsjWnwJu8
	9SKKzhxFYSeujhFg+VhudHFJlBUUNF5XNeUpcoMXQDSz5Q6GeBb/E4FqAOj2OOfzp8z0gdHmg7z
	QuLO3JJqbG7Y6J4dqVij2CFtXspaubWavOtHMUhZVV3a9XWt7p0QSq8xP7eDFrVBF7T1f
X-Gm-Gg: AYBFou0+eb7/xpF+l3wZcMZo5ULFAg+VjCM8d2mnBr9sPh/KlT/VZRXgSSp+L5RLK14
	wkuf4BntCFBRtYWmV/Vqcmn3P/dOAbWWR7IOWtI/Yc++q1pha4mfxj6u7hKcF0ltp5S8b1Agdo0
	tD393FroPvpy1OA759FRxPVRVTPhTrgYhjdsHU4cJ7NBmGieygDsrNGth52VQineXrFaKEnioai
	bHQAAitLeXlhA1IebkoQpU1N1ljDCoFOUX5/pah6lplp0T9mYNKUUxXK55qAXo9HEr+0YSJ/E2R
	QKng0cIYekS14cMd25DLDVjwrQCyI+H4MjS87DFqk8od20RWbTKzW4SQfRa/60f1V/1uaOsewWf
	J4SHjzXM9OsvTw7c9tzwbZ4UvILOPeRiunQbhwGGlf3D5EQFN5jjNxtvZLBILmsRzz0Mdiw1XrS
	MVjxzBqqCgvWMC+BmTqMbdxfi7BKgvvA==
X-Received: by 2002:a05:7022:b057:20b0:152:3812:496a with SMTP id a92af1059eb24-15238124bacmr9694218c88.43.1791197121001;
        Mon, 05 Oct 2026 03:45:21 -0700 (PDT)
X-Received: by 2002:a05:7022:b057:20b0:152:3812:496a with SMTP id a92af1059eb24-15238124bacmr9694186c88.43.1791197120458;
        Mon, 05 Oct 2026 03:45:20 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-151fc3992b6sm24328004c88.6.2026.10.05.03.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 03:45:19 -0700 (PDT)
Date: Mon, 5 Oct 2026 16:15:12 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
Message-ID: <asN/uLBfYARYXlhb@hu-varada-blr.qualcomm.com>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-6-b04c4123ecb3@oss.qualcomm.com>
 <ck5st7q7rbnzfp26kbwzixorxlikq6hpmso5fzz33dlsqsrnrm@g3aey2pabkzb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ck5st7q7rbnzfp26kbwzixorxlikq6hpmso5fzz33dlsqsrnrm@g3aey2pabkzb>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDA0MSBTYWx0ZWRfX8LQiP5EGL0ey
 z+Q+BQKbR4u6t3Ls7iztU6c1SbtXW9X8jBkVVsx2UodkA7+xzOlRxnCz9wli47QkJrykrfaUlOG
 yUTE1hw4+Xz64P8m9pOMHnQKU+91luA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDA0MSBTYWx0ZWRfX55AVZESJYjw+
 D6TXhJo6KL4qj3Fe+iXgAG52daKvCKKg2ZCqqZCeI24CccIUnC0i0nYCLkALUp97YjkPt1MLHTd
 FZlE12FfAmEEVm9oP06qW+rZrywtJXfitK5Kx86MU8pearIB+sunun/1IA1MPZzOAAbTtzAUr9K
 1NenVm5l3ZKadcRip890tfeWp13Lb5R1JR94cruccN4UBvdKtVjat7A+zUPGiRffuR+f+bO0MGh
 nGjtanX9rIy2PHZDqjXzFS6MtkHpns0YBYr3n16zEOPHFjUS80O4jJJlKgd4NwIQuQfwUMeH3pg
 BWRGFA2QAUAIfgdEtHC05EJL3Jt48RrWWHu5BmKO+Bp/dyJAC7QSsH0sWd4eW6Bh2QnM+Fy58DN
 DT1b1XXVpIwVbvzpIUsgvjZtXg5PnJ+cPG0XMDcWiI0wEnCeWe0aJHsMQdO7/jMF5HfGNIoHZD0
 Qia8O5vsbXxamsuvOYg==
X-Proofpoint-GUID: AFg0Rg-fr56H48svbjL3uAxDpAcJzrpk
X-Proofpoint-ORIG-GUID: AFg0Rg-fr56H48svbjL3uAxDpAcJzrpk
X-Authority-Analysis: v=2.4 cv=FryQbGrq c=1 sm=1 tr=0 ts=6ac37fc2 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=3-y4kEJGFriZeApEiEQA:9 a=CjuIK1q_8ugA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_034523_463389_FF1BA810 
X-CRM114-Status: GOOD (  18.59  )
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

On Mon, Oct 05, 2026 at 10:17:32AM +0300, Dmitry Baryshkov wrote:
> On Mon, Oct 05, 2026 at 12:06:31PM +0530, Varadarajan Narayanan wrote:
> > Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
> > on this SoC require a dedicated init sequence and override parameters
> > before they can be enabled.
> >
> > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 62 +++++++++++++++++++++++++++
> >  1 file changed, 62 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > index b6bbf2b570c7..8957f208bc51 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > @@ -29,12 +29,15 @@
> >
> >  #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
> >  #define POR					BIT(1)
> > +#define ATERESET				BIT(0)
> >
> >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> >  #define SIDDQ					BIT(2)
> >  #define RETENABLEN				BIT(3)
> >  #define FSEL_MASK				GENMASK(6, 4)
> >  #define FSEL_DEFAULT				(0x3 << 4)
> > +#define FSEL_24MHZ				(0x2 << 4)
>
> Use FIELD_PREP, please.

Not able to use FIELD_PREP, getting this compilation error.

  CC      drivers/phy/qualcomm/phy-qcom-snps-femto-v2.o
drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:53: error: statement expression not allowed at file scope
  449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
      |                                                            ^
drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:23: note: expanded from macro 'FSEL_24MHZ'
   39 | #define FSEL_24MHZ                              FIELD_PREP(FSEL_MASK, 2)
      |                                                 ^
./include/linux/bitfield.h:136:2: note: expanded from macro 'FIELD_PREP'
  136 |         ({                                                              \
      |         ^

Thanks
Varada

>
> > +#define VATESTENB_MASK				GENMASK(1, 0)
> >
> >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
> >  #define VBUSVLDEXTSEL0				BIT(4)
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
