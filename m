Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3815EC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 22:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29GjwbaaFJ0QdswxWhQQ9R6FkMLdi44RWASmP/APw4o=; b=YGWgw4KI4owjek
	hHE24FW8UifR7j8EDOUpbMx67qFcvd9/HhAVi4KhmULy3sWwtdn2KEGsNhX3BwFscpNrKzDROoy4W
	4yBEMMv51OWOYrQH73Jr+tGrTEBV1Os0H2i3TLcxtkUwfdQLbiNBgl2qyuiraJnzk+d2ej8gufH39
	fNrbGDXugTLpu9DJ3YFBzG8GkHk4ls5nd4zB0e3y0TZW4xHUpNVKpuaIHWvUS06Ru1jYGt5m5V0xD
	GOQhCepD89LMoY7GSZpfshgPnhLrmG6qBZQ2MS1N+iBDxBpA92lfNcVNgAGGSByj9y4m2xXC1NFkR
	1Nhx7q9vy1DMdhT8/Axg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlwPC-000000081u6-21bS;
	Mon, 20 Jul 2026 22:24:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlwPA-000000081tV-0XGE
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 22:24:09 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KJTiP23106670
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 22:24:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UxVovOePdJ7xF2E/PqcWDoW4
	EyLSREIDjr7ZgGqdxM4=; b=FnLBpCDb6YBrO7/4ypvTKe2M0yVgOw1y1Yk8YE6I
	kOPHsUvMV4viYDA/E7qUtO9r3Uvj5qLKmIXAvCUi/0Q1Vr6LwLhym0Z7Eh6GqJm3
	hcDCjTvpFdDwnfAH2I2k9OnfO8ZTK9fax8jK7ifnlhE2V6D8l3XLAKIWpMOFwQIO
	dJH5Clr1udFDMtAeZ+Qt/iNtQQcAKaoBsG7Ju2ocZIuc0V/ViqsynXGUEJeF3ALj
	UR6aB+6rEY00i8pQEbuZPlnZafoZ3EI6oVkFAE6p3hFq36D5/ahRRFqv5t3LQsDj
	8VeHlJpiW86OQyoHaRWk5PUXzNWVmFqbjTNNcu0fMq91HQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhgs53aca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 22:24:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c1a9764f0so212994271cf.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 15:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784586246; x=1785191046; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UxVovOePdJ7xF2E/PqcWDoW4EyLSREIDjr7ZgGqdxM4=;
        b=AFld2uJtFjGnKve8ZePB6YpiYDBVdlZPtcX9/ro7CxMLEd45jHYtrR7Ovg7bRlsqTV
         fNt0J2lIT2VdCtmbLFOEr7DXjDUCX3iiM+nE7Mf99+PaEJ+bMvqRxiBf1VXTMYivdefm
         yqa3d9uIknlA+p5VhbKlVPcpncXMNobRAXXhtEGZApPFqa5TXvfWTJLSK7rZGSdDT2bF
         FHSbVPS8m1OYbSXRqnXmkRkuqKt2MGtG9kPR3fzvf3sFrBlUENTRsPo095yHIlevyJ0e
         du5l+fvqwkXPdNlr+qnSa7y1WGwZSy1bq/zW7mO+emGrIWIClr+pDGS91iGo4JPSUu8D
         ZvOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784586246; x=1785191046;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UxVovOePdJ7xF2E/PqcWDoW4EyLSREIDjr7ZgGqdxM4=;
        b=HCgxuwydSzVx2h0k+msLbp7Yf6Bc8YFnp8bEb1H2TA+ZtX998d9zmu7cn0WXptORsy
         9T/fkVMQnzDh25Nd7d3xWshKbzpLfymU8M2qvy9cNF7AxfYp+g8OAiUxve8LbIvcybjn
         1HJ72cuVnhTwCy21C4vhxJ42UOmVDywyftmsl+SR5DtJSj+gpzRVxvHb2nKbjU2mNSWZ
         zF2Ki3OXk/gKG2I8c7fyElOTp2iqhUrU5Btf0Wh/5OzhUKmBqk2UndUvIgqMZrkKH0YJ
         AN12WSE18s4lL5nmpCblxUGQ9vq680N7nhRX6mdgBUhzKMd/OoOsTjHLj86EgbR3orLP
         54MA==
X-Forwarded-Encrypted: i=1; AHgh+Rp55+VGsmuWtDUhLjvnte4K5z63iMxLVpZS73ygz18KVEAJ6XniEPXPEaddaoFkWdHc8TN6p+0bnvo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHGv16EPhh3ot+zIl1wZsY1A0jevh7d88s2dZlfyq6LoZ3/dYa
	NCaZpDe/i0NS4gp51BR5OxgmPid039l6Wr1intI/BL5XsUgzL5QTjrKyG1HdkMcmgPUjB1UfMig
	XfT5uOzwKMU0/EVEUWwJNWm5SrJapp+xN4gLiGVUUdwu99K0IcE4gGxKTCrr2LjhWliFq
X-Gm-Gg: AfdE7cm3jSm2qRk9HNhmAw0ZbMNU7I0kBBTt0R/KGKgfIHElnOMeRfbpscpIIzxcLmG
	pVIUO18BXr4fFy85Lc9+BDRWToEr3nUDPBa4ceniPp8kZ57PgLrmxGJQ9CEObk3gAAbzYtszS9y
	WzruymvOiHNwlgQjqIAlPPGzW+rPc1REamM2Z4U9cumgXMa7cc3TJ2X039jBYSRm4SWJ1GMm7bf
	OgvhTm0WLg24SfLUxxK3KC/skF5jLaudyJDI7xZvOkbsfCyApxmS3R5usuSBnV5ndurRJddNbjj
	16z2Q7eDhx86kh97p0N8Kv9EI83T9QrARLTMvq72vXkbHTz4IGlRoA7G2NqSv1kuetr149dSp68
	9b0cFKiKAehoJTlcyV7m8XdgCQ0dnYayLCI7W8AvsvLr9w4RA1v+RR+DavRKOAZiKKKFLfdTC5N
	4qqaMnbc6sa+oFag==
X-Received: by 2002:a05:622a:15d6:b0:51c:2cd3:ae7e with SMTP id d75a77b69052e-5213cad922emr144364031cf.45.1784586246165;
        Mon, 20 Jul 2026 15:24:06 -0700 (PDT)
X-Received: by 2002:a05:622a:15d6:b0:51c:2cd3:ae7e with SMTP id d75a77b69052e-5213cad922emr144363761cf.45.1784586245730;
        Mon, 20 Jul 2026 15:24:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291d8a46fsm2601531e87.13.2026.07.20.15.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 15:24:04 -0700 (PDT)
Date: Tue, 21 Jul 2026 01:24:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: sashiko@lists.linux.dev
Cc: Ronak Raheja <ronak.raheja@oss.qualcomm.com>, robh@kernel.org,
        krzk+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org,
        vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
Message-ID: <jc5ckw2gouz3kbblp4mm4n6td3warmxk7j7tfsg5wvuglcc42r@3rneedbxzxmw>
References: <20260508213234.4643-5-ronak.raheja@oss.qualcomm.com>
 <20260508232620.2FD04C2BCB0@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260508232620.2FD04C2BCB0@smtp.kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDI0MyBTYWx0ZWRfX9uV+CszLfvMj
 bZFpqyHm70/Z00lcU6s0R1l5zt8Fa94z3K/Sg9UtZze1ifU5c/qetM2u7q8R2jZcgPY6JLoenS0
 YmG2ssum6L3YQA4K5BiXmGgmdZ7vAgg=
X-Proofpoint-GUID: mEFalmm5hxXtkq0NDK8aGxYqEK_kMLnT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDI0MyBTYWx0ZWRfX0DgMMf7kB49R
 MBKixuGP5TfuXDKPEZ+PWpXIipCw+IYTY4IGstAfgRlw2mM03Bn5L2iV+n5G8V6kqVhK1C3j21Y
 FArUHP/9kdqOnNF35OJF8D8j7yuwaMTGyKw3McpOxlcbj8kjOITpKSTqNhFL0EpZ4Nm5Ac7uyVz
 hi46ilmQyev5iMFenp5iZJ0MLeF2SLnGGOmV1Y3b81eAoUPqZJnjsr2ecPoa3ghpr9r1HRTSL0B
 4c3sg7eazW6VhBuNxkv2Yd1HbyKH6/lzsLo5aKmP9PauDBNCVRqcsKUrp3qno4B4jN23etnefvW
 jD0YANm97XacpTDRnNNubB1q05t7eG0+mTSmnVQteZzrggs0G4QAYpw13hFhX0WRl3ij5c/8/7x
 AZzA8E5yBwPgKmIzNWnvWqEgEyRvsK0+AX30YzHMnfMzcpjA9Ghgy8ObYjFdkS4YJpuu+kKm6rk
 6OT6qPaaWovQjlSIz8A==
X-Authority-Analysis: v=2.4 cv=CpiPtH4D c=1 sm=1 tr=0 ts=6a5ea007 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=cO4G4PFFuWa09AuA6MYA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: mEFalmm5hxXtkq0NDK8aGxYqEK_kMLnT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_05,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200243
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_152408_175355_019E981D 
X-CRM114-Status: GOOD (  20.11  )
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

On Fri, May 08, 2026 at 11:26:19PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] Missing DP PHY function pointers in `hawi_usb3dpphy_cfg` lead to NULL pointer dereferences when the DP PHY is initialized.
> - [High] Valid register offset `0x00` causes the AON toggle hardware reset override to be silently skipped.

Please add DP programming. There should be no NULL dereferences.

> > @@ -3699,9 +3915,9 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
> >  			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> >  
> >  	/* override hardware control for reset of qmp phy */
> > -	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE]) {
> > -		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
> > -		qphy_clrbits(pcs_aon, cfg->regs[QPHY_DP_AON_TOGGLE_ENABLE], 0x1);
> > +	if (aon_toggle && cfg->regs[QPHY_AON_TOGGLE_ENABLE]) {
> > +		qphy_clrbits(aon_toggle, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
> > +		qphy_clrbits(aon_toggle, cfg->regs[QPHY_DP_AON_TOGGLE_ENABLE], 0x1);
> >  	}
> 
> Is it possible for the hardware reset override to be silently skipped here?
> 
> The V10 register layout maps QPHY_AON_TOGGLE_ENABLE to
> QPHY_V10_COM_AON_USB3_AON_TOGGLE_ENABLE, which is defined as 0x00 in
> phy-qcom-qmp-com-aon-v10.h.
> 
> Because 0x00 is a valid register offset but evaluates to false in C, the
> check for cfg->regs[QPHY_AON_TOGGLE_ENABLE] will fail. This would skip the
> qphy_clrbits() calls entirely, bypassing the necessary hardware reset override
> sequence and leaving the PHY in a broken state. 
> 
> Could we use a different way to check if this register is supported by the
> layout without relying on the truthiness of the offset value?

This deserves a comment.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
