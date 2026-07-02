Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAA87C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foOWRvnHlIJJHRYvbXzoe50Ty8hw4uawm6eMdMDHCDI=; b=qNtVgFOZMZ6SGr
	fRNTZj1jskmpUoTn+U6c9lO4VwM2Jx9Y0r0C9vvUsO8oFCcA6rt/+7SKYfILAJOJoG2R7CGBa8+zS
	pZQTzlV/ICoEnON35fjHWmVUNBphZyhGOd2eHWLjyoo4Lk016V5olX09cJQCMf+iup5KWxCQGye5U
	XyNsqeGyzseUGQJ6ObIGDk4FhtvavzbKheQa9JxN02CdNCM+LtlVgPaN4ZlDncL/HYB6qSOnALP1U
	cg74vTiqqNCMxh3aHP4EcGEH0pe3NulOn0PD/fkZ5SDjgG0Bo1+gKrmLgWsuT4LyKCEXFAqIfmaB9
	bY9fw/3DEGgkjrRjO4UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGQM-00000004Qg5-19z4;
	Thu, 02 Jul 2026 12:21:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGQJ-00000004Qfk-3hab
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:21:44 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6629nPnH4139534
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 12:21:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3PdU5MpDYb+4NbgqvJM+G5Er
	Q5QlPStScQ7+050Jmd4=; b=SMeYazgUrxE/KTK94D5qTUStTuIWk1Kx/Lh/Hch5
	dXalsoc6wenh1FNwHN//kxtkDiguKF2+9EYUhde8nPMRZW9cPrkpzMLOoVTk117b
	pOVYZ3nqxxlhK1MQkIitcD2vB1+pGgTocrtdnzzFfc2o+aaOavD2nr2uFFwhF950
	Wr4ZAmR6E4OC85b3t/fez2yH9pByB9g73Gay2ozsiUsoF0WuuS/texypS/L0ldb5
	8fXrh2NViGF5PMDogZvnTO3RpwVEXJy5qVGQS9GxTe1ETKpQENCconRtCKjGqaES
	d4Y++08Q9QW1H1RsAALWxUGc8ubQvlwLng7XVDrMAf6l8w==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5npr8jes-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 12:21:43 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5bbcf60e0baso347204e0c.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782994902; x=1783599702; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3PdU5MpDYb+4NbgqvJM+G5ErQ5QlPStScQ7+050Jmd4=;
        b=dw5BNHc2bu0CIxT5Oyr1pJHG0QS6ywAYNQIU2YsviHDQyEXjOd/aZayrfenQyn1DxN
         Ry7KF6KyM61zPgehfjpSIfspPANKyGXrISA/eI6YVZ5jZ437MnfydYxSrzZeOD0sMTVR
         89XowJhkbmb/QQeooXCRXVT32koSYPxDW/K4X1tlSlrbSIzGMTBZ/Y/HHRqj1ZrUMu1o
         LJOgDbtFSFAorB1pc7C7tElyG0n+fBq8hF0NOB30EYxzcT97PWgBMAvKXs36/iWjZnXs
         FQYnFuBiFhuVaNOLk2DOlQaxpgwLpFCgVtLZRNrlMLGAitOfv7752zFKCQ1IPxXuCanq
         R+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782994902; x=1783599702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3PdU5MpDYb+4NbgqvJM+G5ErQ5QlPStScQ7+050Jmd4=;
        b=FFk7FpT9J0bqBBTY1umJIl282E74CS0Gil1OUOadKt3hopQxehQFwegPidlWGqxh/9
         ucVI9zl+87Lm6ZOtr8ri8nW5vy1SEhKhHkY2fJbsqlxdsUhYoFFrfczCa/5ZlPy1W7tj
         CUSrthTuIYOlM89Y1qfCOcUVwmcQAHv32xkoa6VN62LZrL95Z67Fy48BjRRVpOfQERgK
         kIXCWuPIpdjqWtnG2qHnmqcJl1dFR416f0dxod5aLdEugrK2sIPK/UHMFQ+5UP6AZrcs
         ViSwVdflp3bkq/PtwUVSVR13eDCufYAsXfejLQoPboC+Dk/ubJ0wrs2ndRuZLzPe9hdL
         4NVA==
X-Forwarded-Encrypted: i=1; AHgh+RofiitReMp+3Na/ELmMpTPttRDzMWb1qL9d7jJuTru5R2Knao6u0uYOeyHv47mVDV5UXbgbVTulpus=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYkdgF2ywuYKDyzupsZezwSnZt31GGnR2TuRXmbRUpyEHz+4Xy
	NrkY6wRUu3gc/JSzCvCfPQ4vTvEqnfXSatjypY5UY7qbVSi8okpGXE5XnRnz82cNTW6Az1Ilzia
	WebMG8ypQSMtSDBH75+t/m8gyL6G7yNdavMibwd7TWcQY0mQ4mGpbsbV2oejw9R0vIzii
X-Gm-Gg: AfdE7cmJTn9tLZ2dGZT4YB6GGcSPQakC0Am+uthkPe+93yRqHjCn5PASFokWrS4mhAi
	XfgtefXBM/35DQL451EpD5Fa0kBh2DSiXd06PMWrHe7zHJAsNGsDVYFQZAppCcajREBdmd9YVcv
	7PBpv+lNzDZ1ge0y2Nu92wWoqks2HpPtUUNcVjpN27agiLKe/mdKyHw9rcUxj3OueE4h1Rbj9Rz
	x7onbM32l1D2aXea76S9NPmUvYqPtG1OkybqRyxxfcn8FyfO5JuCOi3w497FnmsJQ7zD1x27I9m
	HCoHdShD1R/FzddvayxDEmXoFeRtln9uV7DgtXrmAXR6IKDAsVOx+CORXlOuWWNjb/m4iv/VYAs
	4lckhElgvby48lGzHKEQGLuAkEf2Ajs7QZ0fXbbE87Pt2tXjUwOEbszVbiRgVaHOcBRO6Rod7Bz
	CdxGDObFZXB/rj1LI3tugkt46g
X-Received: by 2002:a05:6122:3c4b:b0:5bd:81fc:ebe9 with SMTP id 71dfb90a1353d-5bddf34490amr2406320e0c.0.1782994902153;
        Thu, 02 Jul 2026 05:21:42 -0700 (PDT)
X-Received: by 2002:a05:6122:3c4b:b0:5bd:81fc:ebe9 with SMTP id 71dfb90a1353d-5bddf34490amr2406306e0c.0.1782994901615;
        Thu, 02 Jul 2026 05:21:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec899195asm652004e87.8.2026.07.02.05.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 05:21:40 -0700 (PDT)
Date: Thu, 2 Jul 2026 15:21:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom-qusb2: don't unrelated bits if autoresume
 is not used
Message-ID: <3goo36jai5g2v24ijlf7g4gehq5zdlk7uwizya7dimqtm5pmrs@norf4xbqdlw5>
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
 <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
 <64f7efcc-1cd6-40f5-80c0-ab5f882854a3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64f7efcc-1cd6-40f5-80c0-ab5f882854a3@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5AB_cn3UfqdhYaw5mw0fxrj5Lunjz544
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyOSBTYWx0ZWRfXxZ4yLPFKDaWT
 djHrM8Mco6z2ULVwCOc17uPIyZXjEfkvE0v5en7pXxGzIr8ds/l9Uot1SKaogmmAq5wGFnNXZac
 unmNCbqom/Pfq4JFYEp55g6W8z3hgDc=
X-Authority-Analysis: v=2.4 cv=NsvhtcdJ c=1 sm=1 tr=0 ts=6a4657d7 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=Ob6tVj9ndvG_seX3utUA:9
 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: 5AB_cn3UfqdhYaw5mw0fxrj5Lunjz544
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyOSBTYWx0ZWRfXwkAbRlHwHqkM
 mUp+bTDFDCi7YmkANERRHtSTnuRmJkZ7/USos1nF1BRQz1FTJF8mpUZiqgbcwa5VmreNhnscrXT
 y5pG79oGNGxWwjqZQ2LoO/QQXI7XuH+TC4Metc3BeL4kY5EA5emn02vF9jzppIt3pMudFJPHQTI
 cWdvkwIblvyDMqfwDz3Xm1ZmyHaPWw51hmoxq+Z120OV6zA4sGJohSLWTAYQVzsNlq+pAVo6zSW
 qtkZDJSjHHPLADmk9gj9JvP43+qmb3Lms5DwyfHhGNuSGk8IRWF+OTT+lUDveMTc5DBXHkvZWs9
 NgO1DMSTYB8qzBEMVfF1/aLznVgQkga3hKN6bLCDMarAjzmVVbgM3k+PzJmXL55NKzxNUgEedc6
 M5iOZNq1pZlA0WaaASXh4pEuQJf7+8lv68YDdOXI6gCWgFUD5vYjgVBSF3HENB2L7CTwNHvLELF
 TkQnIRLDdqerdl/bvaQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0
 malwarescore=0 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_052143_926140_41AEE4ED 
X-CRM114-Status: GOOD (  14.91  )
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

On Thu, Jul 02, 2026 at 02:00:06PM +0200, Konrad Dybcio wrote:
> On 7/2/26 1:40 PM, Dmitry Baryshkov wrote:
> > The IPQ6018 and QCS615 platforms don't need to toggle the autoresume
> > bit.
> 
> why?

Here I have no idea, the HPG is unspecific, exact details are to be
defined somewhere else. The platforms, when they were added, just stated
that autoresume is to be skipped. Maybe original developers (in cc) can
answer this question. Anyway, if autoresume is to be toggled, it should
be coming as a separate fixup. I can reorder the patches though, so that
at least register layout is correct.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
