Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39605CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 09:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcQ5/kSFNvquzm/WHlFej4Ou3G3bRV5X+m3sX/ji5jU=; b=Ob6CxOcO3IUiFG
	H3sS/7s1qoUfgqw3C46NFCdoi2YQVvA8zsVSJbFqcVQSlktxEVn6RsjLztLh6pVbCWMuJIqgTIwoY
	QM61J3K5urlCNu/NOVs3YG6hZcrV2uNtxCByvQHazvhN9ox12ZEyaPyKs3teOJrn7ZN6O+15k+5NW
	jeDz9NSjiUlHZfE+9JvWj7ZVuhV68aQ851ZjJIv0Ntqy55Tv1V8R+BSe6fvOV5binrbyXwGzs1sTJ
	zQ2/Oy5b7qrWAHMURxGjw9BUTJXRD+EzN1Cy8Fq8GZiPj81Hev24cTjkc6aYBiigAI9IbftyhkgiI
	bWYsrRe8NJCVUxwvl3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4FLK-0000000A7Cg-3Ypm;
	Thu, 02 Oct 2025 09:11:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4FLH-0000000A7BX-2k5A
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 09:11:17 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59299Jmi012289
	for <linux-phy@lists.infradead.org>; Thu, 2 Oct 2025 09:11:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BbZ0kpARpq5woqsrxuG2UwFJ
	0a+vlIFaF0Nv54X+o7c=; b=U6KLbjbUhNdyAMwZlM9FfmOs7mP6N91HXfXmvS20
	HOY7tlkNP4E5ChWQ6zvumsiQe3TSDvfEw1pYWCzZ7IM+rJQsF2EhcuRN78886gyo
	dK6qAHYQv9bIjmcjnYc2yZktC0bbd7OmjDJPqxpNHwbUZwRcYC6ghzGc3EkfvmHa
	wVZMTEaXljI+0cVji10NPLiskdByedzL+Acdxo/A8OFEGeYUT6bmfofax9deONEu
	n7B4AacZoziPWKS8a0EiVpCJ3fopaUufVOZZKw35hvagNippiQqciX5eBMuXnYk2
	FaPitlgvFxF+12EUtCNe/CCzpbCMd7FrC88IMC9HeT9ykw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tyfrb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 09:11:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e1015c48c8so37061161cf.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 02:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759396274; x=1760001074;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbZ0kpARpq5woqsrxuG2UwFJ0a+vlIFaF0Nv54X+o7c=;
        b=QEK9dHVreIXunj4VsaChwhLEHjyZcDYOc14PZlYw0HIILFein/J8bV3OToVIYvjx+G
         VPWNkpWgkGZOE6f1KpGsOL+dCOGMD5TW9g57mfXKZjggR7SVxTjcrGzim3iYdzK62KAz
         UfI3dBODOlasvB9jOSKx0u6415r1U9cZgWg6UvBYMyv6Il9Pqr8Q4dFQm2SCYnGiE+a6
         XoCFax5CW8R0QfzwACK2O089tblpa+2HqMW8WjjTtUMFCTtX0Yw/Vd5CRhOIThuLd1sm
         7DzNnB0Y8hChp8lIyZg0/UnKmOhfpzZQ5vOteP8b1peofsEuk014PZxHpluESR2w2xhq
         5tqw==
X-Forwarded-Encrypted: i=1; AJvYcCUjkk7e4pjrqrxe0SwCP5xZ+iuVk99O1Yqz72ShCGrntXoPf4X/o0KBucD1epflzomqMZqdfiuCTlw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrYLX5kYNbD7Vk72rxlPf7vgUSUgxUmaEWKPhp4SinBN00Niic
	pWeov+sdBlWCbOvsi8PAKGTcg1wqtr1oHWqricPb3aUg6URVkaGgUqXkviES7/MknK/Z436Cm2t
	tqF2PzBHFPFKnkS0JqUS1nppa2v3ySK9yLMdZsLLrpLVZztocpzTdQwBmYb7YiygjVaTl
X-Gm-Gg: ASbGncvf7RKm93o9wuUlVHhsvAeL/vYzKIdxYHtj8HEOQ48g0lgTJEuZydr0X+WBrn+
	U3r9Qa++Ld3l0rR+XAxod9F64ncIycjKCECrkSxmlCZ65UfQCY9j3c8YdXF9gu6P20ufzJszG0G
	H4y0xiOlzkaio9sW5iSmJmteadMWnPCAP/14lJ33XiZMQc/guNdIzx+PWfOp57IsK9pG7QPSi9b
	wDr7oP9Q9aUL9+ZdtgdG8v9ktxqb3Jl/8cgFrkjXYWkyvHqTK8ojYo8rt/hB9TMr44OfCY6N1w/
	5+XjoYPvhxzaL+PC3mjS9BD1xJburcAKy78m2F+17AQYKrMT2BpfkLUxhCu+ShuojuWqSoXKck8
	vpTBvIrmAsdAIy+GY14AuAjlGWrw+bAgbLeQ9HVLGhsNOa0b1+bkIY56P8w==
X-Received: by 2002:a05:622a:154:b0:4d2:ba6f:28fa with SMTP id d75a77b69052e-4e56385c6e9mr37200981cf.34.1759396273305;
        Thu, 02 Oct 2025 02:11:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENSBLEIgOelziMM7PRs4E2JbckXE3QLoNPec5Ivqk6TxCyEXfAzasrbhxr75kMJnXNT42dCg==
X-Received: by 2002:a05:622a:154:b0:4d2:ba6f:28fa with SMTP id d75a77b69052e-4e56385c6e9mr37200711cf.34.1759396272754;
        Thu, 02 Oct 2025 02:11:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba2e1445sm5565831fa.21.2025.10.02.02.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 02:11:11 -0700 (PDT)
Date: Thu, 2 Oct 2025 12:11:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <f4qarbagzswtfb3cozmdp2bul4dpd5jbouce36xgr3mzdsn53x@e26kiedxsxtg>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
 <20251001220534.3166401-8-wesley.cheng@oss.qualcomm.com>
 <ra3bq7guxunk2n7mbrjlefxvxu45clmwzp74vq7bqd2xvp2fv5@z5skxjxs4yxp>
 <8996bd96-0660-70ba-63f4-51111219d146@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8996bd96-0660-70ba-63f4-51111219d146@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfXxrm1Wfq+NjfA
 EgcfqKNbvHOQd5mREeHQNHnt49LsGiGtWc0Bhe4Gbyk26Gss8XiIbJciGaHlzqyKi3qbLpk4Ihp
 OFGHn0AqIiK9ux8Ij3lEAWoEToAp13QAreep+mw97VTWPv4yWfHi5bKxPUPMGdRCO+bibKMa7ki
 XGOQjB+Jjcw6wERCMuz01FSYsGElBsv/lwnAseeD6mpXHXgqs7w73zYgSBSA4+mvsUDURv1vBFE
 5PPnH+ZGE6QU/7jY8umz4qcW1Uo9o9woVhD8AidQ79nN9N4rNP1EuniaEf0PzlOIHPSA41HQZTM
 bhbwlRQ8ausxX+KoiijsPxxPLoTu1UoF6MFxmr7YVcCa0DHWr57FGi0XmWKqGBjtcQHqfNl9fCy
 fBZCVsD+QcIeczzoK2zw8wuROXk4nQ==
X-Proofpoint-GUID: mdLt9ZCM8XIWcpbqmj5zi01s7-om5BIP
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68de41b2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=97tA0vavRIenci2OwCMA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: mdLt9ZCM8XIWcpbqmj5zi01s7-om5BIP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_021115_809712_E761D403 
X-CRM114-Status: GOOD (  36.48  )
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

On Thu, Oct 02, 2025 at 12:14:37AM -0700, Wesley Cheng wrote:
> 
> 
> On 10/1/2025 5:58 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 01, 2025 at 03:05:31PM -0700, Wesley Cheng wrote:
> > > For SuperSpeed USB to work properly, there is a set of HW settings that
> > > need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> > > these settings follow the latest settings mentioned in the HW programming
> > > guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> > > new ways to define certain registers, such as the replacement of TXA/RXA
> > > and TXB/RXB register sets.  This was replaced with the LALB register set.
> > > 
> > > There are also some PHY init updates to modify the PCS MISC register space.
> > > Without these, the QMP PHY PLL locking fails.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 312 ++++++++-
> > >   .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
> > >   .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
> > >   .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
> > >   .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
> > >   .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
> > >   7 files changed, 1240 insertions(+), 1 deletion(-)
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> > > index da2a7ad2cdcc..7211c71fe68c 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> > > @@ -32,7 +32,9 @@
> > >   #include "phy-qcom-qmp-qserdes-txrx-v7.h"
> > >   #include "phy-qcom-qmp-qserdes-com-v8.h"
> > > +#include "phy-qcom-qmp-usb43-qserdes-com-v8.h"
> > >   #include "phy-qcom-qmp-qserdes-txrx-v8.h"
> > > +#include "phy-qcom-qmp-qserdes-lalb-v8.h"
> > >   #include "phy-qcom-qmp-qserdes-pll.h"
> > > @@ -60,6 +62,8 @@
> > >   #include "phy-qcom-qmp-pcs-v8_50.h"
> > > +#include "phy-qcom-qmp-usb43-pcs-v8.h"
> > 
> > Let's not include USB-specific header into the generic header.
> 
> Hi Dmitry,
> 
> This is actually referring to the QMP PCS register set for the USB43 based
> PHYs.  Even though it is a QMP PHY v8 (ie phy-qcom-qmp-pcs-v8), there are
> some offset differences between the existing one and the one being added.
> In that case, should we still have it in the USB specific QMP combo driver?
> I guess it might make sense to have it there, as technically the usb43 based
> phy is only really going to be there for USB4 capable cores, and I don't
> think there's much that is common between usb43 and other HW that
> utilize/share the QMP PHY.

Yes, please.

> 
> Thanks
> Wesley Cheng
> 
> > 
> > With that fixed:
> > 
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > 
> > 
> > > +
> > >   /* QPHY_SW_RESET bit */
> > >   #define SW_RESET				BIT(0)
> > >   /* QPHY_POWER_DOWN_CONTROL */
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
