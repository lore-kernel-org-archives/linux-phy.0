Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB73DFF885D
	for <linux-phy@archiver.kernel.org>; Tue, 28 Apr 2026 08:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqsWFHk4byDWp0uM0ZMqd9gX9HnzkVi3ekcSzn0F2Vk=; b=Es5GI7ypTNgjHH
	x/AHSpviVbhyLzjnlYu4z+t6Sl0KiLyAIKcQxXBxT64UP+cV2zNA8wub295Z7SgELv1wxemtH6grj
	gPmT6KhRxUlBrW9ecLPvBKq2xA/2LMR2qeE7d5GVl2o3+t+fdBxUNNWTPqUKvrHtNlIR9bmn57N/i
	FFQop4UM6nsmyBkUexux9iUdtg/THpTBlTT1RVEqB7B/Lk7qWFQE7kmgVjhq54CC9P1SreXjDRemz
	EuANI8FEI492BBvRobRtI/9mU9aIPDoGwaw0eMKWw1Yb1Ccv35nTDrdbHcyaCVjvK8rXlbo5eVyC0
	hHfPCpq937x7DorB3ZxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdrh-00000000tSe-246u;
	Tue, 28 Apr 2026 08:32:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdre-00000000tSJ-1X8R
	for linux-phy@lists.infradead.org;
	Tue, 28 Apr 2026 08:32:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63S7vhAf1744712
	for <linux-phy@lists.infradead.org>; Tue, 28 Apr 2026 08:32:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+Zu20h9/F+SJQk60N5/Mbo/x
	F3FttwLE1vaX+pR9W0g=; b=hS5ctlWI9cIeddy6YUztSdjjD6lwbI9thiZ7wkj8
	eAO5IbI1SQy/hKFouiNAywQ6om510bKSBF3fhdmg/sAyZPNTClkKiWDtyQznB/WX
	fz6BMBWaaEdEYERW/t1QptBsRMUa2Mzb9KcpV+vwJGd8SDN/jBLiL6EK4NBU25IL
	GWoMON8TshQ4PXU7Wm3gvF8cobE1twwlcCgrd2N1Q7yxvAsqlb6SjlEi1q0Ijt/a
	t0SZ2fsmzOaOOGWzAipO2hHB6XDGNYYF2HJ+j0LoVmfJRv8Zfys2yCKTmlELbPO+
	j4JoHRZVjHPVS8hukbOLNGeUxK89FxTEN/W7Fmjw5jT/6g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtryd846t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Apr 2026 08:32:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50df4c130dbso192854721cf.1
        for <linux-phy@lists.infradead.org>; Tue, 28 Apr 2026 01:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777365136; x=1777969936; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+Zu20h9/F+SJQk60N5/Mbo/xF3FttwLE1vaX+pR9W0g=;
        b=WPUciI5Pz+Vq6pY+zAktnmmjkEEJJZDN677Duzf/W2G725LXL7NofzrgWs65x9CdNw
         aLXUCPrer0XGb7JCajot3YCCPQS51F9yB2oCx42mawq33hP0iMdQMB9rQjl78UdM6W8p
         RorxE4KV2UicJ5SUomZh2aCn+0PKWSTXbw154ayTcTwT9X6l9Bab1HbwnOJBEofbnxfM
         qJqu/R12c2To4BZEPpu0wL8OqBZwYkj/Mn0v1ZvDoEPaYD86dSAU52EV/HWYmLWqBsSj
         MRtWCsU85OYMcTkjYO269cPybotmNUtFzgVTGPhXJgWnboAsnIPbH4ALFSJtQxyb1ls7
         deww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777365136; x=1777969936;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Zu20h9/F+SJQk60N5/Mbo/xF3FttwLE1vaX+pR9W0g=;
        b=Wihd0owvmg76xdgns25cvZnWAUnuZLC9BORZzs2rG3CVb9aZBk5pLGrw253i+pVyIl
         +LsCl2zZZP6ZrSGo+bOnP2PRF5bhu7ShAm41ePAQzIizSA4dV4WIqvmEuCjGPS9BuqK3
         HnbSGMg62jij564ieYtiNKCm0JnkXNGc2v+UFjveTGMYON/c7Jhe75KjGpkxWaM+Z5xm
         VK5UhuCtna0hoJ9SLHjsO1R/kp4ChhU0jIXEtvl9abvCIs+rfO9peP3k7x5v5Bj+6zWQ
         XGz1+TDgNRXqeqwH5H3AStZBJYBxwl4Y4SyVxycjFWq95YVIP1DSvlb59Ln5BCBuV8kp
         rN6w==
X-Forwarded-Encrypted: i=1; AFNElJ+vX25CK5YQRYcniVoy1Zsnod5H37nfXB86Y+r9/IP8US23shiFSD4bZInvDaVQh0mC2BP3Sur1zCc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ+4oQo29xV5HVI4G/C/megvWCPmWJKSFdwnkNt5tD+PHllnkB
	g37qbkSVXiiac8kZSQqPQxusNOM/LTbLl42POqGTe16T02xKnQTzbDiDCxbpNWSO0aHqtREBwIa
	K3ENqzy8W9LRznIQEveO/qj0cIxelu6axM1T0hYYpabYUeVPc6B+/+Q3Z9EUkbg0375Eb
X-Gm-Gg: AeBDievsvfEVQTdyExfoAIYUcwHDtbR+coi6EUm5bVinyKMXjJ1S3fDr2GwvoaAVZBM
	bmalxckoHkwH2EvkNMiX2WCG7LvgYk53xpP8FUbcmZhQ0r3ONLl9FXFNTNpceHeOG/KDtMY2Aq7
	JP3yp7UbT2QSkNKjs7cnyiRwCwMnxVaIsu8kO4sBl6Z+FGvqB5xawjbmQ2iRZx2ZGhMcivt03Hg
	pWRlIxPHhCdc7ODZwq/9vNPQ/KABdNlis6a4kNcrn8H8DqglqqOZQ2K5Y+i7i5x9lj9TTuTu/tK
	j6o2Rl2bBwn+065jIpeZqYOOczpXgn77Y6Omk/FMzhcQ3EdnKSxzkD04z5eW3AH5o7iiKefkXJw
	FsY37ZUyJGf2oVujIdOV6wW0vwzrmbbzyeLaGtGrFAL0SjnI=
X-Received: by 2002:a05:622a:8d0e:b0:50d:7632:ddb2 with SMTP id d75a77b69052e-5100d9cfeb5mr22876871cf.12.1777365136004;
        Tue, 28 Apr 2026 01:32:16 -0700 (PDT)
X-Received: by 2002:a05:622a:8d0e:b0:50d:7632:ddb2 with SMTP id d75a77b69052e-5100d9cfeb5mr22876551cf.12.1777365135474;
        Tue, 28 Apr 2026 01:32:15 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a773a870asm44939345e9.1.2026.04.28.01.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 01:32:14 -0700 (PDT)
Date: Tue, 28 Apr 2026 11:32:12 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
Message-ID: <csj7ilfxa4hcr7groudzrrc4h6fddobxprmyveyae67rsgtian@rxu3gbhvulbm>
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
 <20260427214217.2735240-5-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427214217.2735240-5-ronak.raheja@oss.qualcomm.com>
X-Proofpoint-GUID: 4bATCx8uwzWY0h7ZRoXoom7lnzSANYjp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDA3OCBTYWx0ZWRfXzNSn73spQKMH
 02ZRBulnoSSSOZSHdliSOQN3oggQ3itwO6Erm0HPHkITPhIFqigPGIswlagpHg1H2eYase+oBE0
 OM7BqEQktVcXIIvKaByBgJ8kjhkBDQpy1Xy13As9LDT5NqRROsB0Pvxgf7QKY2fJ2Znmj3XqsJE
 smqNTzc/0gBlKB3sR4UNXHYAVZYVUil3peQ3vAB6fSWD/BP3Nrq6HVfaV4NCwawxEQPi5rc8zcE
 CCUcAJQa9TrWo4qp0/hjM2dfamQgv4lHG5nAGl8p2wA3rAyG5j4buDIxsC/g2v1w7VfbNVQcHTQ
 rcSEB7htuxOPCBtDiUk9tOZe86SlXGM9UcbyvCle3UT3OyhoTjhwQjFB11nxv4kKqQw7fDrAl06
 Jbyk2JSx5RujCg+MYOLULEe0jWjSocEx37IaQZN6hL31XfF/0/St/ns1I3RCfj2ZKy2cK9PToF/
 nn6X50p92T3WNdwF4zw==
X-Proofpoint-ORIG-GUID: 4bATCx8uwzWY0h7ZRoXoom7lnzSANYjp
X-Authority-Analysis: v=2.4 cv=cMnQdFeN c=1 sm=1 tr=0 ts=69f07091 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gcnggjyPzmaCdwFRn6A1TQ==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=1tJ3z92Lny5kRZNiqYQA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604280078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_013218_430351_7329E102 
X-CRM114-Status: GOOD (  10.18  )
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

On 26-04-27 14:42:17, Ronak Raheja wrote:
> Add support for the USB3-DP combo PHY found on Hawi platform.
> 
> The QMP PHY for Hawi uses QSERDES V10 register layouts. Add the required
> PHY sequences from the hardware programming guide and new V10 register
> header files. Also add a new v10 offset structure to incorporate the new
> COM AON register module.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
