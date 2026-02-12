Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B130EDF020
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 03:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQWQ9RDL3cOP5+efAlPDy/itbSC5+MBDVJc84Y8h3FI=; b=NHFwi0VPsKfVIE
	zC7gMi42moFV1mUg5n2xCg++Z4vdHZxEOJrLWJ8GNNAe8Oxzvea+weWTex8d6kt9jH6xxhsHX0mrM
	46YWz9s/4ek5AiVNSNwj6s+mc/Oh03Zhc6xeH6PhilFJvlYkipug4gKpsDRRBD8zu/EnnKPS7gylE
	vK+ieT+Aae6nOwB31JN0lyWaXgsh/TVOFoaM0Y4tBRcbVWm7ogmiUTZ2YugsiUnzUfVtDKOLALSna
	Pl21T7s5QkIVMj9yMy7OLnnGNDApmavUl/8tepgz3cynTfVP5f230k+eec8qbVAYlS4Y1eSysUSgo
	TJc3EMXbCzkw8CRBBapg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqNSQ-00000001bnq-3kVp;
	Thu, 12 Feb 2026 03:33:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqNSO-00000001bnR-2ziT
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 03:33:33 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RkLK3887952
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 03:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3R0yxSAR65Tm1hoBjrDO/b6e
	wY8CnTHJrU2fD2DsNqU=; b=mpVS+eQNS38JNi8UrmgtQrskhdtYcV8Xjs1tH+7t
	+UPeg7R519KXsGTVHMWbEQJIvvA6MSdm5HJG4AsQNmbcWfqdva3etCMuc0mswjKh
	uzTtmQSOFQIrwtBx0lgw3RGLoiUufm9KGuKlW6f+iQ7EO1LP4A/vEOKeyh26oUXp
	2qw7Sap8PRj3wAiG3N+Mn4IlGMTy9yvXPRmRPwC7UCCewSQPgSOM5HOdA+MG0/Wy
	UX3sYVyZ3e7/1yWr0bA6oWKzQnXMZDIqfheW/KR6MBkD2ocl1BWX7LkLsRsG2BGn
	hc6yRiA1/OmGFjdexUnTYQFL8o006GLWM/rNSK69CcJq0Q==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c90wj904h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 03:33:32 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ba87c0e198so2072181eec.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 19:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770867211; x=1771472011; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3R0yxSAR65Tm1hoBjrDO/b6ewY8CnTHJrU2fD2DsNqU=;
        b=apS3WYkNohnuOH+PGFVFDaWVDSf17RNu5jgWXwuOr5MgWuJ5K6AJHwY85KMgKoOwrx
         cApGSY8N3kwTwPjLdaM/x8oe7IIP2OzXjNPmwLLhXrYPv4PJdqyYtsfHG3VkMv5l5gVw
         W1UIleKxa/41Y8efLkWqyqmNCkTB3QHW1GpybAESxoECxgevNAeIeUsZMr8prFJg/KZC
         I8BOzQzTRbCHIdLNNvqGEbr7uvJgZ2fyXjAJ9lVlUCtqOPiUr0+FDx14t0+UIl5zMWsP
         gPG3L5PRtVsPZeYQI1//RdeBW9Nmne3GL8Z6kP97wA8mjJl/5ZbFycOTBt6YBeceSNeb
         0LWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770867211; x=1771472011;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3R0yxSAR65Tm1hoBjrDO/b6ewY8CnTHJrU2fD2DsNqU=;
        b=HJuL5ZFVl3MI8UMxqiUr3dpNSUv5wfWd5d9P7byQ+ooaP0nU7LEGSqIlWsngbdZchq
         fed9KKmZQ8KP53tuft0AvSXuCYIIPnaRg3xjZi6FQN0D839AGdTQ7gjdlaZJEUPCiPKn
         QzPyQR8oyH3PfrpNyCT3z5z+vPWRSj/T/RWUzSuENBJEOuLIg9023aA9ZgOjho5VI+Zy
         quqkg20NVEKWsRWCZcxnyMHS9Sx3LVy8gdyhyKZzQFoNbDS+1VbeZ+4NvChXB5HRK8Ka
         L7enWVniGYbrHC22d6yRy86P2vdnLbfTGMIJdjmZbSJ2uXA0JwAJfxWRM3VpLbZmXxf2
         /eWg==
X-Forwarded-Encrypted: i=1; AJvYcCWml2u++VsvipJiNT6jRK1aBlnJWlxK/2wPgqb+0KbWxazpqNJqqfs8dSzfK+byX3hoPj0LZPOEwKw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1akjVOJiXFHamA8U9oM0nQWa3/sbOokVCoJ06mwxd/T8LZj2F
	X0+EUoq1FMS8p7wakX8iU7vYlZUeasLb/axrvjMVGFkc39oihheOF5M7c5MeuJzlIDX2gUk+P/O
	ya4JsOBJEuAzRb3j5OM3W+V/W0BaBM1kHmCPNn7spbVfB0ung/F+rgoDUAmbceLspBJpf
X-Gm-Gg: AZuq6aJEHBIWUr/0yN2ff4EFV3D61B9AhaLw+oXgr2vHPVLrLnDpsCbAPs/mI82p3nx
	G/6dASlIJrH5erpZZi/DMzKzfGH211Q9peqElciMNSdfD9F5GivCHkVwtBP/rOYtB8ITXzfb2Vi
	G9NsdQv6+VZkNuI7lZtN5z8s+xnWa2qSn4YR6iw+CbevTDDVsWSXLTqfzfr5CjNFMq9Q3iO4oZu
	GKy6IUsyVodfQ6O9bjdgPKA3ARE2SmGQcCfLJkeQ6XBMsbBNqX8NFwBx2/7VAjJIRMXRdFBEI6B
	2I0E6dG1mITwPfg/XcRAgK+8xo8JFzim/GGkwOB8EaMgluUcVr/A6WHvg7uQZhUQ/mrYBhrzGok
	FMtRjhU5rvhNqAhSXlPiU5nvHCXgQrAqJ+dXVp2bExreezlcxH2KHOLs7utggu6EXoNp7
X-Received: by 2002:a05:7301:4449:b0:2ba:6d87:cf68 with SMTP id 5a478bee46e88-2baa7f964f1mr703094eec.16.1770867211266;
        Wed, 11 Feb 2026 19:33:31 -0800 (PST)
X-Received: by 2002:a05:7301:4449:b0:2ba:6d87:cf68 with SMTP id 5a478bee46e88-2baa7f964f1mr703079eec.16.1770867210716;
        Wed, 11 Feb 2026 19:33:30 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dbe127dsm2550861eec.11.2026.02.11.19.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 19:33:30 -0800 (PST)
Date: Wed, 11 Feb 2026 19:33:28 -0800
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
Message-ID: <aY1KCLDDoQtLJ4F1@hu-qianyu-lv.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
 <jvitdcolh4naqjdahaajlzdctcmp3sy5odiheeqacps6pcbg5t@zx3jliileazg>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <jvitdcolh4naqjdahaajlzdctcmp3sy5odiheeqacps6pcbg5t@zx3jliileazg>
X-Authority-Analysis: v=2.4 cv=DtlbOW/+ c=1 sm=1 tr=0 ts=698d4a0c cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=1f11xt899pylJ4gGFeQA:9 a=CjuIK1q_8ugA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDAyMyBTYWx0ZWRfX7z+8U+IEsvnY
 XPLptVBRds5/M5sBLZzqqxRjPRG1dQO1VEUjxNdcEUyFdyMjZnelwnuV4R/XrSiqyv/qzcr7uiL
 H34ypcgTbazyuT0vCOLGfhFS0jfCrOs8yKJ1ZYahiFYEo2lmtrU5jkEmYp+VeI6PWnSoU1D/7S2
 iXtS3OR/7CNe76ZmUdZAMRbtgOlRd06Mgyy3nqGTdn64/37rn44kqtz9s6cybyGX3Z56o5g7zKn
 6cSXrsSB6vwwf58LkZq+hJkkaRhGbCgW7PYAu7R7qnibYyNClOJkDHDMQwaMv5/x176nDKC/mt2
 Z5guv+ZjjdF/2Yy8+36YZwCn9e1J8Lzxz9rXNrg9nQYOKxsGxPl9Xmww+AxvZq+4OKMtugdl5HV
 BldXjJmkzfe9hJkEt8nCAPc5LKcYxuoQYb8Y59sailURnzrau3auFsuuEzt6OUP20TVeNF4gPlG
 zVyXth0ZJ6whqgm/sGA==
X-Proofpoint-ORIG-GUID: 23TAx6RioAyQGqsuf626uwW8txm_u5uY
X-Proofpoint-GUID: 23TAx6RioAyQGqsuf626uwW8txm_u5uY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_01,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1011 bulkscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_193332_761798_CA93AC05 
X-CRM114-Status: GOOD (  18.40  )
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

On Mon, Feb 09, 2026 at 03:15:24PM +0200, Dmitry Baryshkov wrote:
> On Sun, Feb 08, 2026 at 08:49:40PM -0800, Qiang Yu wrote:
> > The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> > two power supplies independent from the PHY's core and qref rails. Add
> > support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> > glymur_qmp_phy_vreg_l list.
> > 
> > Update both Gen5x4 and Gen4x2 configurations to use the new supply list.
> 
> I'd ask for the DTSI patch too...
>
I will post dtsi patch after we get agreement on how to descibe refgen in
dt-bindings.

- Qiang Yu
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
