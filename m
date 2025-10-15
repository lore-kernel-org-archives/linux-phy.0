Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D42DCCD193
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u09HodduwDdcUILlg9zH09riIUdp2rVSFcvpPNN60TM=; b=dxMU4yzS2JPfEv
	nw0WwRC5mB/nG3EzNUMeno+BbQHl7GUeKZD9UWDhDb8lForUYwh9aCUASJYE8H91D3xugQ1XOoDu9
	1e39p8uKuZrW8LeYVLDn33kHxiHEA5ZyO2GzrA9c45h7al3d0sn5lPgQ39FoMauyP9nIZ4UT4SRF5
	l2c2PEhjdBc0SqSvh9ToGTT2WQ/yAZJncrW2CaOgf4og+5u9LxRSmzyrVJ25HgDv5HtJ6j7+wOH2d
	/+CGmnctDqp0RGXAC0drC5A2g710Hlt7+qDRHOtI8eX5cHaZrlpzCaz3P99yAFtRmji79/q+6G5bR
	lrl5VRUR75ifVFR7RAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xeh-000000017GV-1eaU;
	Wed, 15 Oct 2025 09:18:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xee-000000017Du-3rlI
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 09:18:46 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2s7XT024777
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 09:18:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bS1E+4mwLwBFxlFV6Y8vnGID
	Eaq0IJ1+mTWNPvPN/ow=; b=pHKb+eE7EYO3K0e1ksvCiWA39iLCSJMsj+XM1ksK
	4S36D/sLeMMDMQehEZXKtspD1kktRrZO3Dlq7DoNX/eV0sfC/1Dc8OfSatgYNDyQ
	QN6Yg2Pp4Hykgt2jOj+AaTTMA5jeFfO4NaSjuWVHFpSgbHACBlR9wb/q06SQsqo9
	Ty7Bm1djb6BatJ6dqk2tJcDOOSBm4yU5y3H9OcENfgaeX9cMHf+vo/CYEwogapeZ
	xMKsIiOBQSKpnqxUfIOT52/5uD0dTVQu3EawLIxL/jAbjRviygrp/h1lVR79LBAm
	mupIk6btIy3iV4jCQ+DAbEvK2XIVc2uRHW41nIgPV7KQqg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0uthg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 09:18:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32ec67fcb88so9455115a91.3
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 02:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760519924; x=1761124724;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bS1E+4mwLwBFxlFV6Y8vnGIDEaq0IJ1+mTWNPvPN/ow=;
        b=d9g6Ln6EhPE9lMyAVXprlr5dO/pdV8Z6iLgSjC+ju7+MbVf9W6tfC7UOYgKbowib4D
         SxY6S2YtOo3jbkyb15D7ZOx+T8QyJOPAPoSl4rzkrwXYWSpkcPQii1k/E+OqlU79b8+I
         tOnkP4se+Ajpcby1db6eNkZ35p96y8AZCNU45hOpZDiWJJL/p0B9fdmC2sL5KAwUT3Im
         YvaHdWkCsLfcP9roEdkNsDZh4oZ14zTO55JD9pdSwzapUJotGhbJEhH7d9pPuyi3wrxh
         YgP57v2jZs8H+jbI7kUJ0VmG8/h0jPBUNNQFaGyNkjj+/yP8E9v+39yxwu54Ut0qXuuP
         6tyg==
X-Forwarded-Encrypted: i=1; AJvYcCUXej5oxUVNuAmY1V3JhM9xffblqbCsKZ4eO38wbF3Of2qc11kZgHs1Lh+zcSLxgPLOnx1KhMlkueY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzq8mLdnHHr14zGhPGoVx54R9jyRy6mPkrBQw0yztd416eU3zPa
	Xowawzw7AvmUHpDSkNRuzd4JynNdVfxSUsNDGUljJxZEcaIsKPu+CXqjdbgHUu2xIHan0mMSOfR
	uSSo4WI646Oxf4uUfJJQIVE1u81+jqIUL9DzA/3XNojceYqq6s14pkMQ+gLz1Ca+iHG2E
X-Gm-Gg: ASbGncs0/aZ/pyzAQtdayvQw6WvZ0JatabTIrIllHuvM3gX4NZXxyoKJ1cCWEFagZj/
	I3JPsLdhzMk/MmpZ1N1OCwVORM51YC2Yw3kImIDfdBoQ1ce4aWClXuCwVWYL8omcqx6HmZB/NNL
	Mfd2ZCqYGMtSv1dVv8z77Z0ct+CO5TSPk8zL+lg2GS7VQUPIwAuRlg5ZzBKN500ZZjxw7JrfC7F
	LLXSy0JddOhsePhWKyqVlQWIkI36+iTQXZG+LHL/X8xDzGiascOqm1mmcdQAUv85UsFs18xcGQI
	FvYG43bFCBjaOZcp0XPVmLD68/fOMEpxDBGFD/1gH7EJljDSKlrUQbiQcrpV6wgPBoqvnQbKoy4
	+VVpPJXHG5mY=
X-Received: by 2002:a17:90b:33c1:b0:32e:dd8c:dd18 with SMTP id 98e67ed59e1d1-33b51386478mr42150813a91.17.1760519923661;
        Wed, 15 Oct 2025 02:18:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMgnMO7HLRZxNRp6JE2WyjZvNwxMd4B9BWG+xm9wiLFSOLNzWFuvmVaLsS63QDbhtbP/hrPg==
X-Received: by 2002:a17:90b:33c1:b0:32e:dd8c:dd18 with SMTP id 98e67ed59e1d1-33b51386478mr42150785a91.17.1760519923204;
        Wed, 15 Oct 2025 02:18:43 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9786084fsm1727013a91.10.2025.10.15.02.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 02:18:42 -0700 (PDT)
Date: Wed, 15 Oct 2025 02:18:40 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 3/6] phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY
 v8-specific register offsets
Message-ID: <aO9m8PA5QMb5JDgz@hu-qianyu-lv.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
 <fw5hf4p2mjybvfo756dhdm6wwlgnkzks4uwgo7k3dy7hyjhzyr@bv4p7msxapcb>
 <aOzSnxuuAb4gFCkk@hu-qianyu-lv.qualcomm.com>
 <x2443gg3bj37j7qxjk3ocol4xzcly2vandob5j46bp5c6akqb3@zgwrl7qhl2y6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <x2443gg3bj37j7qxjk3ocol4xzcly2vandob5j46bp5c6akqb3@zgwrl7qhl2y6>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXy1w5Gns/mF3s
 5IuzBhnUncG0DLzXRcfi7L1kUlMQMDTQUUjFtDTkZDPPLd3IUuqFooWnXyfOrRKoUDpdemdGV0H
 15+fxgO5LySL40WR6WJhO51CaYPbB6OCsD8tyj8PG1vaEeMPCaK05c1c8iBFiztbu1Eq4k6nPj9
 JKZpwiDoO9XdzESYFwE08E+grmXtahMK8ZPIuhvar4mc+4MXf+j5an0EmMaf2+coxIPX4m8V10i
 1/q9hljuCR5PiTCVItEeyPWrYfDbwZdWSZ+99Ufvrmb1/rrvup1c5xhX51260T1d8/locvEzm16
 8upZbx4O5c+WRfOH9wLgUMrMI6+B+FBBY+Ezh9THg==
X-Proofpoint-GUID: n9UrTXAraXaajXHCCEZitaYoKNCUn-i3
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ef66f4 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=naz9k7CIUQbskZorHm4A:9 a=CjuIK1q_8ugA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: n9UrTXAraXaajXHCCEZitaYoKNCUn-i3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_021845_076024_51180C38 
X-CRM114-Status: GOOD (  23.62  )
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

On Mon, Oct 13, 2025 at 03:40:32PM +0300, Dmitry Baryshkov wrote:
> On Mon, Oct 13, 2025 at 03:21:19AM -0700, Qiang Yu wrote:
> > On Thu, Sep 25, 2025 at 05:28:15AM +0300, Dmitry Baryshkov wrote:
> > > On Wed, Sep 24, 2025 at 04:33:19PM -0700, Jingyi Wang wrote:
> > > > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > 
> > > > Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but its
> > > > qserdes-txrx register offsets differ from the existing v8 offsets. To
> > > > accommodate these differences, add the qserdes-txrx specific offsets in
> > > > a dedicated header file.
> > > 
> > > With this approach it's not obvious, which register names are shared
> > > with the existing header and which fields are unique. Please provide a
> > > full set of defines in this header.
> > 
> > Sorry, I didn't get you. Do you mean we need to add defines for all PCIe
> > qserdes-txrx registers? I don't understand how this makes which register
> > names are shared and which fields are unique more obvious.
> 
> From your commit message it feels like
> phy-qcom-qmp-qserdes-txrx-pcie-v8.h is an extension over some other
> "base" header file (likely phy-qcom-qmp-qserdes-txrx-v8.h. It makes it
> harder to follow the logic and harder to compare the values. Please
> define all used register names inside the new header.

No, the new header file is not an extension. It's a full set of
qserdes-txrx register definitions required for Kaanapali PCIe PHY.

Let me rewrite my commit msg.

- Qiang Yu
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
