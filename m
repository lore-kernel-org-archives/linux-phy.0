Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6DEBFD88D8
	for <linux-phy@archiver.kernel.org>; Wed, 11 Mar 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0v5ftw/6cYidfHomp5ofr7MCbpRUBvQ20LxoF3rBf8g=; b=2E7TWlXmCpc7Dk
	aAbYSnRBG5nhFXzt2/bVxOyq1D8556gGmJ7tUsAGpkZUwua42xHvcgIiAhKk29I/kuvRzbeOOWfYu
	tz3NrXt50C5UztW2vmi0BbUWkIo6TX0KIvLCbSQojZiYo0gqXjHGWwAFCnPsmqVJk8PlR8FKhrEih
	rgcSg+l/fCcUKVAzamUvMvNnBYNOO50i6yWbvHp06gZM7gO5A4m821lxqe2k05E/ZurryBqiwV1cW
	6hMeGAtAggKBjPIN69RifLhHmptkE79pkYkWOWQ30TxteYD9ZaT/bcDdJuw/j6JaTQvr+jn6bwBxr
	BGY5N7Wj7j+SiuDSRDxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08y1-0000000AWpx-1HlX;
	Wed, 11 Mar 2026 02:06:33 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08xy-0000000AWpX-1ZUY
	for linux-phy@lists.infradead.org;
	Wed, 11 Mar 2026 02:06:31 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AIYgvh2347887;
	Wed, 11 Mar 2026 02:06:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=j7bOfsafV6XVKSXHa2xkzQsDc+IFLqMrGihRvjPrxOg=; b=
	VY6xk4INSYlKqQAte3iU+IJJa03RVByK/daHizfGWRbU7XLeTYQRgJeI0GFxbcl9
	2rT9/PMDzHsPnoeu3zUhSXugtaBFNMTxyHLskG8xApS81hAa7OiA3Lw17LQxC9Er
	0GzeJoS2hyLvhV8V9Na9pG9NxdpSFWOyQ2zF+5ZQjsvdwceAIFPmuXpQXjjsL/8w
	Wl97StKkTDrpBaanRd5vfuctpjfm8usc8A48gDggZEsyu3UNcJk1oo4Dyfo28inE
	H7Cj3Du5OJF500a5sU2U6SW5ykTGwnUNa/BibVtO3JdYWrFZpCVZVW3ZY+nFy33R
	bevL8EtJZ0le+vGmBb2WXA==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4csmmac2vf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 11 Mar 2026 02:06:25 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 62B1dfOI020383;
	Wed, 11 Mar 2026 02:06:24 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 4crafewwkb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 11 Mar 2026 02:06:24 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 62B26M5N002770;
	Wed, 11 Mar 2026 02:06:23 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 4crafewwj6-4;
	Wed, 11 Mar 2026 02:06:23 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V5 0/3] Add UFS support for x1e80100 SoC
Date: Tue, 10 Mar 2026 22:06:15 -0400
Message-ID: <177289787685.2131580.5635014789066764861.b4-ty@oracle.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 mlxscore=0
 mlxlogscore=988 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2603110016
X-Proofpoint-GUID: dENTXrzodeb0ZDLTsj1gn5ju5hIdQ69K
X-Proofpoint-ORIG-GUID: dENTXrzodeb0ZDLTsj1gn5ju5hIdQ69K
X-Authority-Analysis: v=2.4 cv=U5efzOru c=1 sm=1 tr=0 ts=69b0ce21 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=-ZyXfFwcfwoi6QT-urMA:9 a=QEXdDO2ut3YA:10 cc=ntf
 awl=host:12272
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAxNiBTYWx0ZWRfX4n2elvMUf+52
 ruixkjDhY7K0ldJ+XLISFjOicxdqtGm62k2j9EdjPI7iTD96nP0KiMurAILhWVRTVjyec2A0CU8
 ZUpeuV3F8gcKzV+zjYSQqAz5pvzOYSaVNXf7J2u2NoOznM8YN8NzhYmfUxOpmGqNeLw7msV1C7M
 82XCSZqaAS02nMRm8a01jmLcPfkxbx6FoQRZbs/EDC9kQ0huXmlInpgufZdtjew61UUEnrq4okp
 g8Dk+shDqPYepMXXE4gxMn3+tnDSXV57I4dldDRERJs7L2NwGHirmu75N5MWHBG9DfIzSIjQ095
 lTi72r61AZQQTm1UsNPOotKnt3xPEE8dJkXaCTTzTIwZGJarZyN8niUyrqC4iGEWU5uO/O4ObPT
 rf2Pn/YowjIbuMo+t6kezKBNG195STqH9ap4PcaWavZBr9cVw5RinTIHUvAHcaB/kYNEgHqScHu
 M+jvhW54c5z3lm29KdLboX1nWZy9O68nRc+UGvEU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_190630_438646_AE718BEB 
X-CRM114-Status: GOOD (  10.22  )
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

On Wed, 11 Feb 2026 18:59:23 +0530, Pradeep P V K wrote:

> Add UFSPHY, UFSHC compatible binding names and UFS devicetree
> enablement changes for Qualcomm x1e80100 SoC.
> 
> Changes in V5:
> - Rebased on linux-next (next-20260210) to resolve merge conflicts.
> - Add RB-by for UFSHC dt-binding [Krzysztof]
> - Add AB-by for UFSHC dt-binding [Mani]
> - Add RB-by for SoC dtsi [Konrad, Abel, Taniya, Mani]
> - Add RB-by for board dts [Konrad, Mani]
> - Link to V4:
>   https://lore.kernel.org/all/20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com
> 
> [...]

Applied to 7.1/scsi-queue, thanks!

[1/3] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
      https://git.kernel.org/mkp/scsi/c/690d41fae92f

-- 
Martin K. Petersen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
