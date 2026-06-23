Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E7DCD98F2
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWYzbUO/ervlMqeB7/I/LLCGYkj1XfPuQ8lH9x1jCMk=; b=gP4SAmTIqfcvRH
	hl+EJh5mqB6ZQwYMH8O4ILRDlOwJR6k/kim3mo9IJHIhvWEzhDzip/IbrLK5qE4uCaUeohnJ+KjOw
	kH1Qn2gHrWXrIEpJN1eSMQJxI+0SX0lMEttUadwmoaa10no+LO+TStmd7bRY9L6nY4rF3aKyFGcL4
	c6HLbkLDCOyZqajA72MWH0Ohzl4zuTI6LyxwAOY4GA0qqE3jlDeyCAc4t5GYZyynAv33wAPMvjAAS
	GAGhajUgLS8pSKVvFNH/jmi6wDlz80wm3rAN3s/kf0uRMoam7w7y7W9NE2PsyCicL9FjWtl+Ei0Nx
	MkYBnjvKgCSYVx9uK5kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc5Mi-00000006jXj-3sp7;
	Tue, 23 Jun 2026 17:56:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc5Mg-00000006jXD-3Bjc
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 17:56:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NHqvjb2308476
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 17:56:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=K44ehTwQkYUZ6rlL7/DNpEjH
	H4XJiDPFFcvpHvTXK4s=; b=NahfPp48IU9JzRYlH/CBhrTEdYO8M32kK5Yh3JQa
	wQmmegiQhD7FbPFcbsNRb6rgrprZEe6D0wz1UJSnEDMCQDXrfLUYVLnE+0qk2Bql
	bs5nMgtT6IXqAoGIpGzbTzwyG9Ip732r/sjghjzSYUKgebW5feuJ91yH5uZVfI8k
	7xPOoF398tthlyT4CYd9d3kS9OvyR/hfhWH2GtC9mFG930VKZ/pTZ+1MSOQFsrOt
	w+plLqxpCxxAu2Yd9Bi3Me/LDC7DCZ8aK6x7hQXRGdBYn65Lh1BT1hMTPZ3Lexsc
	AeOhmQ2ycNi/IQKgq4svyu11w3tW9xS/TwZxgxXq4vqs9g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyp1gtnxp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 17:56:49 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8e0dfafa41fso3582696d6.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 10:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782237408; x=1782842208; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K44ehTwQkYUZ6rlL7/DNpEjHH4XJiDPFFcvpHvTXK4s=;
        b=KQnxbx28ANWt95abxxETZugvw1uxnV+UfQsuPfVlT8BaW0usDPvX9dGoXagFBjTgyS
         nRezXX+aEp5OUTSS4yKP9ExedObe5EvTuw9ZnmZLDex0ASvi0jdyqBYg3BS7PJ+5qPHv
         O8DF6YRvRjgTqWsBzRdXQMY2l2NHZZtgAkO9b/WHYuMbjUhq1QSZvzu8R9M5Um3h0vr+
         YH9QTXaxMsXbem9cYkj0RC4Q/BMEcAmRsvp2MO/7BRIDZXI3qFSdFGvGqndd9rhVLNJD
         nFSvGTs7AgyMq1bVzJBFJbI6deMuXMRIgXMQkIqJsoBcqkhj3I0S4hUczZC/XRJ7K7B6
         fzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782237408; x=1782842208;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K44ehTwQkYUZ6rlL7/DNpEjHH4XJiDPFFcvpHvTXK4s=;
        b=gMSTXcoyVa5LAQI576BI+Xi8nQHC+FOc3ksmv+np0wwquxx6RdE/cxEK7mPs/1NhAW
         qhnafKYnYIg7iy/tH4qv2iYl5m4GLYgn/L5qE3z789IdScfTI3vyb44zcK4XLS69BiRI
         28EZuBsw+QxnDdFayRlxY9fOyfUvuBsnjHwVgdlgKF43NbldsuU9EJ1xatstZ5keYA0x
         C8DMvklaGNCFiZOJtGXu8U1iWSH8fT7E4IYhcc/bbXJ5w8aaF9XJr7jjAdUQN7+JOcQu
         YPn/Hp9goamgyNpTQcUXwY4hk0nQPqV+7WjRiDAq0Caexjk984we/cxmd0UqDRxB0fkF
         n4Yg==
X-Forwarded-Encrypted: i=1; AFNElJ95t/dLr/ttGE+ZLysPqN1c0pAdznI9ENJsV4JbDz7mU59FV6dsgVA8LnhFpGHcv50JABARARzcMxU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxyAV76Kh6HFG619lO160aiXkRnuaztx/ZXNC/h3wJV+1wHFOzm
	rKOzawo4njJRHsp89YVWawqMDVgM2fczq4bVtxUtzCurCWa+DTrvkzuc/plz7GQB6700b4eXejs
	lCZ4a7Iy2Gtf+YaKHeOTLunbrPTrD7Qz2k2zBhZZG1mHcZuaZmje6yVTc9y+JC8nHlbJH
X-Gm-Gg: AfdE7cnb8wGnlnS8tgdUBrFPrRU2euW+NOpvSmUwQLngd0CnMNthJJ20Vmygvu8HI9f
	/RUY8o/+AUjpJMGJ63pkhdCzr22X3W7tSEEOx0hsTn+p4Y6gb+1zYhmzqCPCL8PqgQpeV5uCswm
	GnxTDVNsd1rfO4cvWqIm/5gU79Z1insOb1lV/agFSWGWoxOl1LWV3Ftf0EJmki2C3GgvOQ6uC+O
	PpXTzy1qBLLR07IUoOtIegwSIYSg6JJ7XVbbq/16n6wC1N/oIktbBzn5CRVHxX7y3NiP+/QvJjF
	3vnyX0BoXtYJt0dJ8/yi79S2ihCZLbdwEpALwVplt7IAJKwRGQu4QKOKewvvC7Qt/m+lMLDetLS
	A9AHhGnHQnaRGGZ7goXc7n7Tp1LAzALv74U/oCSUZQtoMf02C+iFW3+fWyh6wxK0PiGattYPp9+
	CZu2NtkLvNuMokWmtUQqy23+Wq
X-Received: by 2002:a05:620a:f10:b0:915:a762:2735 with SMTP id af79cd13be357-9278357030emr10158785a.37.1782237407946;
        Tue, 23 Jun 2026 10:56:47 -0700 (PDT)
X-Received: by 2002:a05:620a:f10:b0:915:a762:2735 with SMTP id af79cd13be357-9278357030emr10151485a.37.1782237407254;
        Tue, 23 Jun 2026 10:56:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad6957a6cesm989274e87.48.2026.06.23.10.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 10:56:46 -0700 (PDT)
Date: Tue, 23 Jun 2026 20:56:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
Subject: Re: [PATCH 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
Message-ID: <37a4vzkiicm7aw3bg2r3s5e53kigh3wsc5yuqqjp4h6oxhpk7g@oybpt7kdnnxb>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
 <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
 <9aad8e45-b0a5-4c59-8793-8c0747d8fafa@oss.qualcomm.com>
 <uc2l2mbobmik5workhcbtry5spe2gyamx2x4yj4rjly4t3dbrh@n34fo74rctnk>
 <6fb112ae-5919-4c8f-a915-4538d14284da@oss.qualcomm.com>
 <iws2snsi3yfddich3rqqurhwt6mvi2boushkog5t5gvo2ahwmp@l2m6ays2kicf>
 <72b140a7-e95e-491d-8bae-f98a593bdbfb@oss.qualcomm.com>
 <zzs4wgr37wfptzqwgttxdubqnyudyh3am2r6i7b56kd3lwuo2e@bjcyelaxtlq3>
 <3972248c-acfc-4b31-8c99-69bfdba34b8c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3972248c-acfc-4b31-8c99-69bfdba34b8c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: iM5AEfqVg-JhgBoTBxY2eLxLTYHjVkqg
X-Proofpoint-GUID: iM5AEfqVg-JhgBoTBxY2eLxLTYHjVkqg
X-Authority-Analysis: v=2.4 cv=QJhYgALL c=1 sm=1 tr=0 ts=6a3ac8e1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=DbwxBUtuSyURhUCB4_gA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDE0NyBTYWx0ZWRfX3hvTYQ+uzWGw
 FekNwiuo5aFbxBTlhU8oPpCUwAq/leN4zz+A40dFxvb0dtl86epbRuU2vpRh+rNR0LbcC9j9Eb/
 OUVICjObGRsexUO6UqrGIBIG7GZf+9k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDE0NyBTYWx0ZWRfXwwkW1FeeczHX
 M/IkhrSJ90eY+1y7jZqlKXMTKXcZX7oIwTxjhiOUvl4iEw96CuH5PolXs2qWJ3+cT2PZyXManos
 k145Q5YNv5BJmlRK4iDipQvFDOvvqfzK7SM3T34jituaO7cmkq/OtoqWnA160b3SUXEMt7suUe+
 CRMqfBLUyNHOto5yXs7r1xWNXuSYO1EOQdcRnw1S4yD4keEkvcWfmUtJSBxpCQZMkD4xmWR6Bdz
 Lk/2JZ3mHHkLgppvuZg647Wm66g0k7EaEP1v2w1+uCPFtCOctRAd8La0Fn+Nn+jt7Ai3f4gFP4r
 guYuXOPQm4oRHxJ/A6VgXQz105NcwWDjxuG3HiqMMIM+eAK6Ah7xQpQ6Ct2uN/Z654/2DpGgrTg
 YhVV20M4NW2K+L91GSXlB/58/jEwtfxXHK1T1gZyTecGf6IKCkflx19URBLW5neuZriPGUrHgmn
 SpR/zloKVIcTQvo7gxQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_105650_826527_BBDB6DB4 
X-CRM114-Status: GOOD (  45.26  )
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

On Tue, Jun 16, 2026 at 01:44:48PM +0200, Konrad Dybcio wrote:
> On 5/28/26 10:00 AM, Dmitry Baryshkov wrote:
> > On Fri, May 22, 2026 at 02:05:14PM +0200, Konrad Dybcio wrote:
> >> On 5/20/26 5:06 PM, Dmitry Baryshkov wrote:
> >>> On Tue, May 19, 2026 at 10:12:06AM +0200, Konrad Dybcio wrote:
> >>>> On 5/18/26 5:38 PM, Dmitry Baryshkov wrote:
> >>>>> On Mon, May 18, 2026 at 04:15:16PM +0200, Konrad Dybcio wrote:
> >>>>>> On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
> >>>>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>>>>>>
> >>>>>>>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> >>>>>>>> a flavor called USB43DP, which as the name implies, features USB4, USB3
> >>>>>>>> and DP signal processing capabilities. In that architecture, USB3 and
> >>>>>>>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> >>>>>>>> The DP part is roughly the same as on the instances without USB4.
> >>>>>>>>
> >>>>>>>> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
> >>>>>>>> Only one USB protocol (and flavor of pipe clock) can be active at a
> >>>>>>>> given moment (not to be confused with USB3 not being able to be
> >>>>>>>> tunneled as USB4 packets - that of course remains possible).
> >>>>>>>> The DP PLL is still used for clocking tunneled DP links. It may be
> >>>>>>>> turned off to save power when no tunnels are active, but that's left as
> >>>>>>>> a TODO item for now.
> >>>>>>>>
> >>>>>>>> Due to the nature of USB4, the Type-C handling happens entirely inside
> >>>>>>>> the Host Router, and as such the QMPPHY's mux_set() function is
> >>>>>>>> nullified for the period when USB4 PHY remains active. This is strictly
> >>>>>>>> necessary, as the Host Router driver is going to excercise manual
> >>>>>>>> control over the USB4 PHY's power state, which is needed by the suspend
> >>>>>>>> and resume flows. Failure to control that synchronously with other
> >>>>>>>> parts of the code results in a SoC crash by unlocked access.
> >>>>>>>>
> >>>>>>>> Because of that, a new struct phy is spawned to expose the USB4 mode,
> >>>>>>>> along with a .set_mode callback to allow toggling between USB4 and TBT3
> >>>>>>>> submodes.
> >>>>>>>>
> >>>>>>>> Thunderbolt 3, having a number of differences vs USB4, requires a
> >>>>>>>> couple specific overrides, pertaining to electrical characteristics,
> >>>>>>>> which are easily accommodated for.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>>>>>> ---
> >>>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
> >>>>>>>>  1 file changed, 322 insertions(+), 70 deletions(-)
> >>>>>>>>
> >>>>>>>
> >>>>>>> Overall it looks good. The major question (after looking at TODOs), do
> >>>>>>> we need a separate submode for USB+DP / TBT+DP?
> >>>>>>
> >>>>>> The problem space is as follows:
> >>>>>>
> >>>>>> After a TBT (collectively TBT3+ and USB4) link has been established and
> >>>>>> we have a link partner, we may (based on the HW capabilities and user
> >>>>>> config, such as kernel params but not only) start or stop a DP tunnel at
> >>>>>> runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
> >>>>>> AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
> >>>>>> entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
> >>>>>> as a separate DP AUX host)
> >>>>>
> >>>>> So far so good. But I still don't grok if having a DP-over-USB4 is a
> >>>>> separate submode or not. I.e. I see code (and TODOs) to detect and
> >>>>> handle DP going on and off. Would it be better if we specify that
> >>>>> explicitly?
> >>>>
> >>>> I really don't want to end up in a situation like we have with:
> >>>>
> >>>> $ rg _USB include/linux/phy/phy.h
> >>>> 29:     PHY_MODE_USB_HOST,
> >>>> 30:     PHY_MODE_USB_HOST_LS,
> >>>> 31:     PHY_MODE_USB_HOST_FS,
> >>>> 32:     PHY_MODE_USB_HOST_HS,
> >>>> 33:     PHY_MODE_USB_HOST_SS,
> >>>> 34:     PHY_MODE_USB_DEVICE,
> >>>> 35:     PHY_MODE_USB_DEVICE_LS,
> >>>> 36:     PHY_MODE_USB_DEVICE_FS,
> >>>> 37:     PHY_MODE_USB_DEVICE_HS,
> >>>> 38:     PHY_MODE_USB_DEVICE_SS,
> >>>> 39:     PHY_MODE_USB_OTG,
> >>>>
> >>>>>> Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
> >>>>>> can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
> >>>>>> (and each of these routers is hardwired to one of the PHYs).
> >>>>>>
> >>>>>> To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
> >>>>>> super high-res display at one of the physical ports, or a long
> >>>>>> daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
> >>>>>> we would only need one of the PHYs (associated with the router that's
> >>>>>> wired to that port) to provide a DP clock.
> >>>>>>
> >>>>>> This, along with the normal (logical or physical) present/absent status
> >>>>>> can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
> >>>>>> or something along those lines to toggle that bit as necessary
> >>>>>
> >>>>> I don't see phy_set_opts(). So maybe a submode then...
> >>>>
> >>>> Sorry, I misremembered the name. The function is phy_configure(), and it
> >>>> takes a union phy_configure_opts, hence the confusion
> >>>
> >>> So, phy_configure() will be called for the DP PHY to set the DP opts,
> >>> but how do you plan to determine if DP is on or not? Or do you plan to
> >>> add phy_tbt_configure_opts ?
> >>>
> >>> Another obvious option would be to set the flag if DP PHY is being tuned
> >>> on / off. I don't know if that fulfills your needs.
> >>
> >> Either this or tbt_configure_opts. We still have the muxing question to
> >> chew through.
> >>
> >> The bottom line is that all AUX traffic happens between the "AUX adapters"
> >> within USB4SS, talking over thunderbolt to other AUX adapters on the LTTPRs
> >> and the far-end device (and anything inbetween in a chained topology) meaning
> >> we only need to engage the DP host itself (and therefore the PHY) after we've
> >> already performed the capability negotiations
> > 
> > I hope you mean USB link capabilities. DP host still needs to ping LTTPRs
> > and read all the DP properties on its own. I don't think we want to leak
> > that to the other layers.
> 
> I must crush your hopes.
> 
> There's some preliminary TBT-layer setup (handled by the tbt driver in
> Linux), followed by the expected DPCD (and alike) r/w accesses, which on
> our hw must happen through the DP adapters housed inside USB4SS (again,
> because the DPTX's auxbus is NOPed out). Think of it as just another
> i2c_aux provider.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
