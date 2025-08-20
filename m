Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 902A4CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0FBMQZvS6jKRuYpyoRUh5NBN0MU7cc54pmof9lm8oM=; b=vM4/djl4zuz8rG
	EYtjnkpRklmIKHB9lb2eL+h+oFdC9iEdRULNZCktDgT30/S9yuflD6K4W4pqhzmmccgodjMVNrqcA
	eu4KQjUdP47bMgtcvrnjknwApMfTnq1ia7ExsqhVS4VOYWILfuvKK+lpQvL17OrE7PdbGDC9FnSMx
	HgJfmR/Ynm38yI31JvtWNpWtNGrCGE6fISLI44xoArlfD3XadhIbpBM3uGlTPRtyrC+wb8SApmAT6
	dI4Pp3QBdyblAeHfBjhrCEhpEuCD1rj3+YFK4iCq6KiB5EzdZj4Vykp9/9t9OPWIo8cmDB9R08ec2
	s7zWZdAT4qEwodR45iZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUg-0000000DUv8-1I05;
	Wed, 20 Aug 2025 12:00:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohOp-0000000DTxL-1Vzg
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:54:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KA9QjW005798
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:54:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9hkspx9x0UaL3XQk/V0/oUor
	TUc0YPNibxHdtYC5rCg=; b=KOLvFsqSgDRvsUk8dBZIPg6ItXH5vgGC7fNxsrUo
	xlW01//Kqxv1Gog3ctPhAH9GDcrbgIGG5Zx0wQnw56uxBXAzIcsaSuEHiHnG5HsJ
	l5YqdlENf/QYmpaFeEKJP6uAMaTfksmoELauVW56uNPob+E44G3vsiwwxTle+XDS
	UNSsMkqOKKzPXnO13e11oeJhukfA7IB6FgDofPMopPNJFxXJt9tLAU5CUj5kbA9W
	99dkVgLlRwlODq4ZunV+1ueYlUFis/tXABZjwUzM2cBftWPS/O/HsF8+SVjdsKr4
	hGkxOlS9rL0kWUNVsTzXGHZDlQAFwCqeSALOcCEot5AQsg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52chjys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:54:38 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70d7c7e972fso5956336d6.3
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:54:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690877; x=1756295677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9hkspx9x0UaL3XQk/V0/oUorTUc0YPNibxHdtYC5rCg=;
        b=WvV8TSDLvS2tR6LyQk5n8ArmX/pWd8KA56+GEt0AxQ5cQU7cyB48lNmWDGXAZ0zaxV
         GCNHZs2+unBkVmDi3RjwL9zsNsDsI9BEkebWZr24J5a5/Gqv90Fajcn+WUpB+caizqAY
         pCk0IIijGT0rT8oVeng+YQ1e81h9wcxAVH5+42BuKqt0iNyLbCxBRSZDztQs8Z0bKOyu
         ABx/0P0FwXhUK/qE8TnY1SO2axY8dRrJNW9cIi0BqbpUq9P8RdwJJw7p3PlNNyqtaZBS
         Y2wOlrExrfoKj36L+NKlQSEY3b9LEH5p2bGnkyL8bcjR7DIK8pf/ZtdaxjztHe9sD4o8
         fKjg==
X-Forwarded-Encrypted: i=1; AJvYcCVvbusLMtys5nbhKTVFsyXKIbiES7SRoiO63v1D9BhkxLkPNULhNtYosgp6ZiWz03y5mXyvZzzVEu4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhygHFjhEHq4ntFr10AdQhQyST2YjCTihLb53zHwzm96nf0UEt
	DI2e/PLvBvkTLUW3lyrBrrGQgB38KP7IawHYKpTMqfT9jikbIUqtS8wvTkDoUV05Ml0D3pha1tU
	9NjliByJYHbDagPvfduC67/xo0qoKw6KeRILQQWhAYYAGfRK6l5R1OUHRmSH5V/eRCSI3
X-Gm-Gg: ASbGnct2PzRPK4zjzWckuPGc9I4CKLI016/ZCQmGJIV7glNsyq3MZSc48P3gz6gtSs/
	N/ImXt4IuALy3h0l1RUS+6jNjmabJZGGxEEIDhQTTVNTbKYOZr7H2PbUztycsAWG44JuptwXbLD
	lJUU6yR7YVQBCYrThVWG2mkjnsAM627GwvFHbBCNN/lIACr68X9jLV8+OlVm2W28FckCQIU1CKn
	k/xNZOAK4gjPwAQPXq3B9jkp4rHT+gqiZNEOB2qBPyvJnbOSKrWfFUty4fVkkPeh6aB1TOBrVDk
	PbcoBfBxvdZY0UrTZzpkrfxUVwo+/uBiVcAm0cuH7fGuk8yVvmfvmr1xXUxsYs1AHeLmVUwfZPt
	g9bCW31e7M0IvdWDOVI1uYDXEcahMgP+4QBlkBOb6ofGtRnyVjHIF
X-Received: by 2002:a05:6214:e49:b0:70b:b06f:3d47 with SMTP id 6a1803df08f44-70d76f5825bmr26193586d6.1.1755690877265;
        Wed, 20 Aug 2025 04:54:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGgrTO8nnUT/lmte63CyExWcCFiml5AC0BmNDDeEox0FxHid6Ngno7F0JmrK609jC1RUQXsg==
X-Received: by 2002:a05:6214:e49:b0:70b:b06f:3d47 with SMTP id 6a1803df08f44-70d76f5825bmr26193296d6.1.1755690876730;
        Wed, 20 Aug 2025 04:54:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41e251sm29376871fa.11.2025.08.20.04.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:54:35 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:54:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
Message-ID: <ukxv7donvkulgci2dwrokuflzxzeyh4kohoyja2vywropntxnb@qepcssbe4wpc>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <b453b8ff-a460-4ccd-9019-aed746a7d52d@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b453b8ff-a460-4ccd-9019-aed746a7d52d@quicinc.com>
X-Proofpoint-GUID: HyplQZLAb7R4gRt-hW8Qy6RVYn4yl_un
X-Proofpoint-ORIG-GUID: HyplQZLAb7R4gRt-hW8Qy6RVYn4yl_un
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a5b77e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=jOqwWQH_q4CvC3V4_bsA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXyMNSQFT0ChiY
 fJAprTeJyYhVcUUdEr/xY7fWvp3ZLvenrJ8ozf78lmZFbVBbW6UaoaA6CuEITnJ0pAduzrS19f5
 jVefXwTqi4/H0UlPoG6Pd18GnJ71xZUN+Ch5euOqd1I7rkvmoUHVmRL724/nbi2Dqq/jVoRv3p0
 oaiPXfewkICQ9Z0yqF5vUcNLH5uohIdORLq9WZvlSKPo0KMXpixBiNeA2KMpt17T/UJh6+FDaHb
 mm0aGaZiHKfjRG+EweTeqPmIzufFWIke2qBa5Ubb2MwemdKiI0gZUkilkk16O7vsO6znZWtFPe6
 3MosdgtghoEWN5ezp+G5EZwCHM3jhE39bar1N9cEj/D+TbJtG6nLBxUesZzUxIkqmvSIj1ZITJv
 jJPgDGe3JFyVlu3XHpnA0ojROEfdFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_045439_403014_AA4BD3E8 
X-CRM114-Status: GOOD (  22.35  )
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

On Wed, Aug 20, 2025 at 12:07:57PM +0530, Nitin Rawat wrote:
> 
> 
> On 8/20/2025 6:19 AM, Dmitry Baryshkov wrote:
> > On Wed, Aug 20, 2025 at 03:58:26AM +0530, Nitin Rawat wrote:
> > > Add regulator load voting support for SM8650 and SM8750 platforms by
> > > introducing dedicated regulator bulk data arrays with their load
> > > values.
> > > 
> > > The load requirements are:
> > > - SM8650: vdda-phy (205mA), vdda-pll (17.5mA)
> > > - SM8750: vdda-phy (213mA), vdda-pll (18.3mA)
> > > 
> > > This ensures stable operation and proper power management for these
> > > platforms where regulators are shared between the QMP USB PHY and
> > > other IP blocks by setting appropriate regulator load currents during PHY
> > > operations.
> > > 
> > > Configurations without specific load requirements will continue to work
> > > unchanged, as init_load_uA remains zero-initialized when .init_load_uA
> > > is not provided.
> > 
> > Can we please get configuration for the rest of the platforms?
> 
> Hi Dmitry,
> 
> If you're okay with it, can I merge the configuration for the remaining
> platforms in the next patch series after I complete testing on all remaining
> platforms.

You don't need to test, finding MSM8996 or 98 might be troublesome. Just
fill in the values from the hardware documentation.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
