Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A7F9C5DF97
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oiw9pt1OvZWqnEd4gTvSkY6p0HoU+SN8TD2lH6kGjow=; b=rB8PF9ktkBhHYU
	BttYscFLOIv72HP56S3hknBcYti6WU73ilDf3OYwjBfXabzGwcrcyK9rVOddSIDqIc0WAjAXYQF+b
	q3vyr7EaPHMjmAKFwvPrk4yZmW/SHnUjfeGoUH5B2jLfa8BPrEKtCqJoSGF2hwM20ZjXDV1EyZLkT
	YNQwSkqaKOXGhekOcx9ehzlspoGbYfvyJWJsFSfJEd+ZK4zn4qJTPb8j1O5lka4gur0QLwDlKa4QP
	Jt9Z58/xQVyiITGSqf7z/3CLz/o6Lj7jYW9b8EJBR6Bmsf1u3S2Kk7PHyn1WSrXe4FFg06JN4Vkp+
	5+gMfJWHEdfcWe0n7U8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmev-0000000EaY2-1J5V;
	Sat, 22 Aug 2026 14:25:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmeo-0000000EaXG-2wD2
	for linux-phy@lists.infradead.org;
	Sat, 22 Aug 2026 14:25:20 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67MEMG1n1462840
	for <linux-phy@lists.infradead.org>; Sat, 22 Aug 2026 14:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lqTmiWxZbpG
	p2Ca8WwMlm9SHBAl/t1NnsRYU6QY5Ozw=; b=StKDbvt+5piXpjLAhP9AktDQ8y8
	ACGisiKZggddR+xQ1CneH20c6Of6zZzGcwYjnUGg30JEmwLc/d0LNkpXy1s3vOeC
	2DhHb7a2tg1epzgl2RBoIzBsg2021XhLbHERwepy2pVGrSem535zOGAj6/o5i0YM
	uPlljr5gBc8I1cRHpiuR9Uy/LT0uWTtTc5Ld0V7aO1xVfnkW/EDYUMNPoxIseXgD
	d0FsBAsdiBBTWq5Uwz99Gdy84WuW6/quzo4/Ajg80RdOkI5vCrMb5Wy+5Sqn06vx
	yNQNuKS03z5bjsB5OVd1TBBGST7lxglbyBTGjdwvtB7UIk722GerhHy2Atg==
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com [74.125.224.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g74399bw5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 22 Aug 2026 14:25:12 +0000 (GMT)
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-66c77a52575so7241942d50.2
        for <linux-phy@lists.infradead.org>; Sat, 22 Aug 2026 07:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787408712; x=1788013512; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lqTmiWxZbpGp2Ca8WwMlm9SHBAl/t1NnsRYU6QY5Ozw=;
        b=fi0zb9IFiGLLSGM2QegW9B9ombVAR/aW6KQl+Vydnn/B9go0aNixTK5zXWFNP/YmLi
         CuUybAC5UZTX0OwUIvpxn72guyRwwJWkE0BhWkeI+zoWYPskr5xXnx1He8L4CE6DSaCn
         1Dty4XT5rU1Tx8r24YthFVNxJYslplZ09VYSJYol/6QvJOnv8HF6LWZxjJuDSeGg1Fwr
         /ZtdrKyq6FkRLLfLxw74CkSAfWGy1uL6JWVuCDnQNNTQT3wac9F6tnIlsUP/gBNd0J7N
         ZsZkoBhPS1DWGXPkpiqaJllC5qz0FKrgW9okDxGcTya8VNqSt2rXiDNj1uqXGT6lQpAm
         dmGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787408712; x=1788013512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=lqTmiWxZbpGp2Ca8WwMlm9SHBAl/t1NnsRYU6QY5Ozw=;
        b=Og1/3QsVssAuH/TAdZCU+GgcOYEYamcuvsr51NbBQrah3Ri0lU/VASctrDUPKeg+F+
         PVH6GL26yf0uW3H3lio7/UszJLnJ8X7GX3NwBKX+U5py7FH4mScb2L7lmfk96lHmJuFs
         hu/TZEd/VTvaScMAbi35YC916veo/ziPSsVd5qjKpnmRkcAI5bWyEVECZ31oilecrRCM
         KEi0/vj4XJ5R5RG9WX2G9CyaJCjzvY8fd2egkUlCaxeV+f5DZ8Na037k8G6rB/+lKRo/
         tEEB/045O6pMh1x/XThG22ft2g8rrrSa+qFWG3rGA/SdPlGof7gZfZK0KicmTV2e/z05
         MYOQ==
X-Forwarded-Encrypted: i=1; AHgh+RoVi4lW7FL+bsHz96Xuh/4f9xA7SZ7je+yDdptUsbRofb56RBQz/8na8nrMd88jsZq6zEsPZ9Ao204=@lists.infradead.org
X-Gm-Message-State: AFuF++nrcOBwmxgCqbgKKOGpsdoFbqevDDNVHnnPc55gSpxg5NG75/1A
	rs+/vN1Bo2a+6ZIiLthV33Cm9BnQtunHP5ajKnMxEth9YhWmGy+rAdDHPnuFzDQLq1nkgamsfKi
	Okalq4yU2QIl+5UpwGyRrR/behH+1STWlhCBPRa+xa+zKAMLWSse9YeSvsgm989TSuJRq
X-Gm-Gg: AR+sD10BsXGvgghF2uR6Wlp6CUE9UCADkWi9n+AxgaTs3hDlmTvDvJ3ao25aRNALCGN
	+6AdgWpUUVAccbttD83KcvI2CR+Ch/pQzqYyO0p7BVbms4lmQvZ3IxC+WhG6QTB3EJNV9G89huQ
	ZsgcCaC1WfW9pjaU7+2ER2inBt8vlriJqQlQ5G3aF/LhXO796Orpnl45PcOvbewq5mAG8DR4MrQ
	mw9rgn6SGfbXkgqcRzDAC9zy7DyOOmrmZ+vcwJZAEN2byj9ze/fta8gHFaxb+IvocBnxmsFiyK/
	2NcysHU62VyLSEPUFYYvkGwlaeHs7rI5BByiPhAh9zDgWLnKpn399Ef+cj9t3X8lGC3yGXtbHxn
	CA71+eU4cfLFtDAmPIj/GEBgT0ezI+t7oMNPonNMlHTkO9Dwl7A==
X-Received: by 2002:a53:cc8d:0:b0:667:a285:7624 with SMTP id 956f58d0204a3-66ce4b02a7cmr3827517d50.35.1787408711885;
        Sat, 22 Aug 2026 07:25:11 -0700 (PDT)
X-Received: by 2002:a53:cc8d:0:b0:667:a285:7624 with SMTP id 956f58d0204a3-66ce4b02a7cmr3827510d50.35.1787408711459;
        Sat, 22 Aug 2026 07:25:11 -0700 (PDT)
Received: from agents-mac-mini.lan ([2600:1700:b450:a0df:b4ea:69ed:306f:23dd])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-66cf46460a1sm931442d50.5.2026.08.22.07.25.09
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sat, 22 Aug 2026 07:25:10 -0700 (PDT)
From: Jason Pettit <jason.pettit@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jason Pettit <jason.pettit@oss.qualcomm.com>,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming on Glymur
Date: Sat, 22 Aug 2026 07:25:08 -0700
Message-ID: <20260822142508.25473-1-jason.pettit@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com>
References: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODIyMDExOSBTYWx0ZWRfX0aSBDG8i68eB
 Pfl2Ss6BcQkE3yCg4BaYAyYQUclZE67G0k/F6gkYYwy0mDYJEVYpdLvDOQsK2YziWppJJ3GbOJh
 DDU/Ubxl4veJHcg521Ka45fuLjmBwLD1ANlNygCaEb//lOCLNsB3CzxUb8oAETdWzAo5cLrvTHp
 GUNmnyKoylHi4TpAy6w4jvhYcUE/gzsHBbn1LKPfBuDmRYYfSmNlJ7Nxqf3GnRMxLfNCe01C/oF
 weoUfRuAerlIFMHBKo1cj1Q8n6dg3k67u10GmxFYsS2xs39nQq+sarqdQLxocA8M27YwPEAV/Zo
 5N28Qoh9Wsm5dbxqoUGuDiExkjKdi07/yB79m+UR5QAnSrSsnLTlVrDmBFRKPsAejSUu9Fq7Ihy
 jJiERWg2NhUpRbLjTalb0dBu8ROIHyknp//H+XqDOVpW/TBDCW0YOQ1hVw8E7T5rJ/TNZvgQjXF
 nJP5IK9rz9BzpuqeGLw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODIyMDExOSBTYWx0ZWRfX9OY5pYzeKD2R
 mZFxy8CnwA3oG1wRfBq25MRv7SuOq14ZkDROr9Gpnw1exQoqzpKGOwXA00ectbZSSycSneK2z7R
 XgLhAHoCr4r0sdqEshZohKxTOs4+1rw=
X-Proofpoint-GUID: RHHZ9o1JyUA8YR3AKmk0d7m2UrKhmwez
X-Proofpoint-ORIG-GUID: RHHZ9o1JyUA8YR3AKmk0d7m2UrKhmwez
X-Authority-Analysis: v=2.4 cv=e402j6p/ c=1 sm=1 tr=0 ts=6a89b148 cx=c_pps
 a=S/uc88zpIJVNbziUnJ6G4Q==:117 a=xqWC_Br6kY4A:10 a=Sv0fKeRqtYgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=RQBTEf8xbrG97JagYZgA:9 a=nd2WpGr1bMy9NW-iytEl:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-22_05,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 clxscore=1011
 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608220119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_072514_746203_ACA273A1 
X-CRM114-Status: GOOD (  14.65  )
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

On Tue, Jul 21, 2026 at 10:48:33AM +0530, Nabige Aala wrote:
> +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"

That filename does not match the one accepted upstream. In Linus' tree the
header is

  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h

The "dp" and "qserdes" components are transposed. As written the build stops
at the include.

  drivers/phy/qualcomm/phy-qcom-qmp-combo.c:56:10: fatal error:
    phy-qcom-qmp-dp-qserdes-com-v8.h: No such file or directory

Dropping the line instead is not a fix, because the patch uses two symbols the
header supplies.

  phy-qcom-qmp-combo.c:321: error: 'DP_QSERDES_V8_COM_C_READY_STATUS' undeclared
  phy-qcom-qmp-combo.c:322: error: 'DP_QSERDES_V8_COM_CMN_STATUS' undeclared

Both are defined in phy-qcom-qmp-qserdes-dp-com-v8.h, which has been present in
mainline since v7.0-rc1. Correcting the spelling is the only change needed. With
that one edit the patch builds cleanly for me on next-20260821.

One other thing for the respin. The patch no longer applies with a plain git am
on current linux-next. The include block gained a line in

  eca0e717aab1 ("phy: qualcomm: qmp-combo: Add support for Hawi SoC")

so the context of the first hunk no longer matches. git am -3 applies it.

One process note. The subject line reads [PATCH], but the changelog in this
message reads "Changes in v2". The revision is therefore invisible to b4, to
patchwork, and to anyone following the thread. When you split this into the
smaller commits Dmitry asked for, please post the result as

  [PATCH v3 0/3]

rather than starting the numbering again from [PATCH]. That keeps the lineage
traceable from v1 through the split series.

I am carrying this patch as a prerequisite for HP EliteBook X G2q board support,
so I am happy to test a v2 on Glymur hardware.

Thanks,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
