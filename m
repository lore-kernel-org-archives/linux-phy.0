Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127E5606A327
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 09:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j8SlGlgn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Qngahx5p;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ENQsfKNS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f16hfa85yupsRcicYr9aNSIUlGjSXrAhF/IWlbBeSkY=; b=j8SlGlgnB1Kol2
	9KzuRuuWPLXfiMmUMcB3BOMCQSJmDTaeqG+va1GFN4rFNfZwX55PB0Pi1l+WHGkgrzReF/v2R1J+Y
	12Bq9Pmy3DKTrSDBOTtYnk8EyiT5Ci+T4cAstoSSqupYY60O+hw/1O2qj6yBkgUU/z4xJ4myAydcm
	uCfUcTUZl6pa8dzhwnPiXJwqD/M9RsnjQs60DxBYEMSGU/xd4rL2BtBOv8ZiTe6xKfV3SLukqf1Ag
	5YWHnQLGm1uGUz5SyA+keAwogudbQZ6bD5j5VzJ0TCiI+ALvOmCy95FteUUxcXZXYkcUeKoXCryRS
	5hQQWnP9vNlzAXzwj9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJT5W-0000000BYFQ-2kxg;
	Wed, 21 Oct 2026 09:58:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJT5U-0000000BYEX-10vn
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 09:58:25 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69L9Bkpb213239
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 09:58:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/ubkfmXIxB950gCeTdHVEMg4HSbfsabXa8swan3tUsw=; b=Qngahx5pOCG+dLa4
	bcvXWYxXpFEwiR3NldD97e5gsW9PhD5dA2oAugLcc4902BDv4ddgLIshLcYA9H1P
	yCuP3MCMqoKOT5ehqYwiph0qW9NRZk4YqAEhiP7Nf95Y0yeIiWLoamD0ArxsoAxP
	E2T0O7ukTops5IbswaPbmj0pbNkGIH4t+oW3XLUhMGVHtZNkrggmYZq6g+qCE/0l
	MSF0H/1LNgSiy2gQbaPrJngQG+AMAv0xWn4hhNF+wxu6rjBfW9hAJXtwPlZG64E7
	mQHlz/YO54dJOiemhz5MRe4qE7V8l5xme7umViZ0mA0yN77+izclG2k2tiF/wT6Y
	U1axKQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hetj485fh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 09:58:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5360b8cf8f5so1599401cf.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 02:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792576703; x=1793181503; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/ubkfmXIxB950gCeTdHVEMg4HSbfsabXa8swan3tUsw=;
        b=ENQsfKNSH+FjUtyiFcgg1nXe4pJQxlNyOabFOW6C6tkk4IJN+BbMaGomx21LtdGMQa
         Ienb/JfOTtPMo3PtfdA9VfzPaIxkRW8z0TBpNRt4SkGwDM1MQOBcv3J3Lc5galuSWqWT
         tzFRWQobK0ACRFA2wfc/sUgeeAHv5QDMs00p6SmtTBnx2uo647A3it6f4dOsxtBSHzuO
         XTGnFQsN21tHbZ2RpYKu80uBON4vy2JHp+DkvQAN2z67fyGZcQidWUhNaeDwUz1Sg8ui
         7vTwpJE7EGvg5Bld2Anl3YwGFvFsDdzpgdHZUk1ZmyialhjfcbsGAAuKpRZge3IjaedM
         aJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792576703; x=1793181503;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/ubkfmXIxB950gCeTdHVEMg4HSbfsabXa8swan3tUsw=;
        b=QZ1hp2OM6ZK1+s5EMLGTJdHSilHNnBaBTMSZTN/KqoXpX11ojl4+a5TFOV3CpQ1Byp
         IbRsn+QoN765GPsN+jgxCJNeb4dJFP5FtNetMW0SPwNAmTHqfaqe8oMukucL+8FK6Vau
         tA8dlrd37eiT1MkKFLTWjwgqAdZHONUjXQtOZKAow/p+aTUhM/NA/kiY5L1IEV9k437X
         M8npYgwcvMRK4Ak0hSbtebOP5jTcRuYLBcZV0BShwdzPTpKhkMLgUPFeMO3Zmy2q7JL6
         eDxK3ghvu4e90Y0NDXyRwxyZ9otHHN0nbTC5s2M8iO7Ai7osPRDP5LjxPj1FOjqpHfai
         PSng==
X-Forwarded-Encrypted: i=1; AKwUvBxB2gQ6RPiEbmHOdCwQ0cZHbf/9rOiHEPYGT+MAg4h4vlnx3wg1R+w5uJFaORhhjycNyqBoQXoYu+c=@lists.infradead.org
X-Gm-Message-State: AFq9FYKWQ4sEW32/0cmmtKMow1PIzWDwGfHCKTnalBljkOkt8f2cYVrj
	4x+mE0BikZg1S5zo69RJEx8QdqstZru1YnR44N6LkgGVgp+zIorjkjlJEYbhzVGPKjm+/dngdM7
	HAjpYDvwaRnG9LlsavCwfK4GBPltIus7tl8JH0YuK/DTY+2HCoqNs97cAS/sLniYDBpGl
X-Gm-Gg: AYBFou0eZuoKT8FFRUvYGCqus6FtzDPZv/H3IjD6f96y3EUUSQIkqEzKGInYs+XmFSF
	s/H0I+7WQfcpkYPwNnIeZ4wHpniEhVC7wMufrhOqAG6UBS4s6m4NqyTWNwKIRL4QNtPLg7mGnQK
	4RYLJOJqyWXlDbsHDne9VWJKetTU+PKckKzTX6BtdBmo1CNj3ITRyFuvTp3/RQMNdHDpYiivEkh
	q/tm2tib2I2Q9i0hHQ5qSKEhUSR9bJC7xoXaDb8NU7CkPMBxG/Jz0/lnKYbDXEvCR/rfLBrNq9q
	16y8mgSLT7mq6d78c013IRi13xqTF8AeF5rYdomWTBNYHLcyyT/6sTTyx5UNsFahmBhQNQMPowc
	1RQqf6cHGEPdX0yi8kq8xJw==
X-Received: by 2002:a05:622a:1b8e:b0:535:84e7:5a86 with SMTP id d75a77b69052e-5369b15f2c6mr30062821cf.0.1792576702580;
        Wed, 21 Oct 2026 02:58:22 -0700 (PDT)
X-Received: by 2002:a05:622a:1b8e:b0:535:84e7:5a86 with SMTP id d75a77b69052e-5369b15f2c6mr30062041cf.0.1792576701609;
        Wed, 21 Oct 2026 02:58:21 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4678faa02dsm60710266b.40.2026.10.21.02.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 02:58:20 -0700 (PDT)
Message-ID: <90e14985-be2c-41cb-be74-60ca1829322e@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 11:58:18 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init()
 in the typec callbacks
To: Oleg Keri <okerixx@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260916133814.3977-1-okerixx@gmail.com>
 <20260916133814.3977-3-okerixx@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260916133814.3977-3-okerixx@gmail.com>
X-Proofpoint-ORIG-GUID: VQKxwE1Es2nlFqtIVbrkEgh-THM7lbM4
X-Proofpoint-GUID: VQKxwE1Es2nlFqtIVbrkEgh-THM7lbM4
X-Authority-Analysis: v=2.4 cv=N768hG9B c=1 sm=1 tr=0 ts=6ad88cbf cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=jGh8KTe8EfAoFKc4BLQA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDAzOSBTYWx0ZWRfX4klIDuPWM1UH
 tb5wVGhVZbTk5jwC9IUMCrHe5R1X/XOI8/G3fkf2TU4+CyrHuewWhH1+y88dXACR8/FdSAxBHV9
 C/bZ1ZYD8uKwAO+4Bs6f2SKVXXILlQuyER+xHkp4VUaTKOZ0DukmCM4S6RaWFSJX9w5PSHf1wcK
 BYITRri/OGYfPxWuY/5Z/etGKtvbbS5N5RmQLDMOqdUg47H2Jv3JFFKFZoYeUp4idcOpNrfFSzT
 GaxzmRwKbua2wa7G8odPzHjBLAmw42jbURJYCxcYb6QOVgJLAFEldF3q+blzHAt5avWrxBx0zgJ
 1Y1WjIE5ubjq+tR2h2YZDRXbV7cPJ4UO2461EZkGQJSlZ4UN4GsGWx2500KZa/KcLxQ7nJ5+1N6
 J+vMrhHuTPDrj5K0s+R1WWI+YHpqgrX1B/A/vKNLF5i4UDwkjSU80hjE4RxflipZ/Rxc07YUZIJ
 X8YkQM2ymPpngYo0iAA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDAzOSBTYWx0ZWRfXzcvgf2mLGlm+
 CLpAVySkMAj+yLseU5tAxMPkmyHzpy5PmnNqebGj28bJ4PEBSH75iyKZZ9UxjSdSrk9dbA9u+8p
 QaUuIaJfz8z8P0COszFErxtGRxgeXjU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-21_02,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_025824_303244_75273F53 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/16/26 3:38 PM, Oleg Keri wrote:
> qmp_combo_typec_switch_set() and qmp_combo_reconfigure_phy(), which the
> typec mux callback and the USB4 init path use, tear the common block down
> and bring it straight back up on an orientation or altmode change, but
> they discard the result of the bringup:
> 
> 	qmp_combo_com_exit(qmp, true);
> 
> 	qmp->qmpphy_mode = new_mode;
> 
> 	/* Now everything's powered down, power up the right PHYs */
> 	qmp_combo_com_init(qmp, true);
> 
> 	if ((qmp->usb_init_count || qmp->usb4_init_count) &&
> 	    new_mode != QMPPHY_MODE_DP_ONLY)
> 		qmp_combo_usb_power_on(qmp->usb_phy);

Sashiko has some comments which seem valid

Is this something you hit in real life, or is that a static finding?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
