Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12393606A324
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 13:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xJyzVZx4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Lqb3YdlU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=XhbjsSTI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UqNLr11HN6X1tiB+GYBgK0KRyHAyT7hv482UcQ+6GVA=; b=xJyzVZx4GzQLHjBRtybGl1Tgks
	X2MBhbTEe1RmA9gVoZZJK9z/z4xrflhPC0526wQ+xfKWWO49CusSj2QT05O5tDh+9l4F+V4VYKpm9
	JqQT2uvZ6Y0Gb4RordnuMV/NAsMfQSrGkH0uNqV9pnibPhhzNAlMbmqCleYUFZ2zzcLodJTfyfQC+
	J+M6rpvdOX8hOwEGyG+dwV7F6osZ3OEVU9PJw0w75mMYTUhsPHHw9nd0OVgQamRrSmSl2LU16SR0c
	44pyr3cgz0/ocgVkf9RXFFBL8gNKxefL8emA/bqpCqwT1vJkAWpO5xL96WVQKspGBMF2endhObggk
	Af4/JGQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMmcE-0000000BkgO-3SZY;
	Fri, 30 Oct 2026 13:25:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMmcD-0000000Bkg0-0TMJ
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 13:25:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UBGOlv3130325
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 13:25:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0yIqH8rTlsuDq51lfs3vb+Ea8wfpWG7AfZ/9AnIdEPA=; b=Lqb3YdlUdtJ9/KJo
	a4yn+zoXt2PLvRgt3UPxWwqw5hDaNNs2+6xwGjoQHxn4X/mb9OdIAIICS5CKBvuG
	W1k4xI7YO+zq6xtME1jSz07aFlJ79wQHal+uGfe2kml6ZUerMadJbMQt/AQMnp9I
	TI6ewCumhvBat1zwqceQQgtDTPepv2Ho76qEKvJZfZxYJY18UNjEpEXMUlgjoNJq
	L10p4dARgs2QOfA2L473WCto3Y+k1Q2j1NNekzKfr3BuGGZLqihpGc2lWeJ7t/mw
	zQJt0eYOyXb43lxyJ0TNWmkBEm7O542o5omeC6yi3F5SmRZPh6hBYA0/SvMz2Oda
	ib2JPQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qk5pj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 13:25:51 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7bf97f74492so23513137.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 06:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793366751; x=1793971551; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0yIqH8rTlsuDq51lfs3vb+Ea8wfpWG7AfZ/9AnIdEPA=;
        b=XhbjsSTI8uYID3PbPCuewbQte22BCFFZtmsn0hpdPbcdPUxtRp7DwkHFJzJ4FCknkE
         y8e6W4omPVSS1xip9Lt1EYxaGdEDHgvC0A0zC3Ve6ZQjl45ZkBWcfoUW0hLPsgDkHClF
         e9raWeOYh5K5JXjvreKqkpok9zdx0NRu86HVf20dpPMxpaYmVdFoefblXK7CLvmkXMBF
         9nTXtuMxS7641b2cLU7emX8kwzbrUmq/77rsah3JCse+dD3mJdF5C010FE+C23imVtq9
         Y7Z4hImPDwdNYWm7ZGHpPPaVaNO6wpHuEVLBW+8kRbnzFAYyfkeDXrLWjpsrVIxiLdS/
         VpDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793366751; x=1793971551;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0yIqH8rTlsuDq51lfs3vb+Ea8wfpWG7AfZ/9AnIdEPA=;
        b=jIolYonqVwBkKVxreG/CE9hL61pTaefxHCkp6ry5DqPomlyYdLovM6tXFkGpBZhDYe
         pNhZpuYp2OllwmTRGGfB/t5lpQLu1ODyGBswJyD71HBVTCo17P2ROsAHdiG44Tk/Hjj0
         tPxTQm3INLeMo+9CHHL+EM9/J1JWtHCgT9ybDYRJxdD+2FIWPP+o7bE/bPSgEdCJArHx
         sqfWh4qOev3KfsC4p+Q8FDuIXoex14Pfqu5TEuvJmehU4KKIAZhGkJfpDwXRciGLPTUJ
         yPPMzzxkeMmoa0UVTR6LWWRp4wkWLsSBNUWwTybqnUqf18jUpdb+NL8hzgJetZL8Mgs6
         bnmA==
X-Forwarded-Encrypted: i=1; AKwUvBzW7YtnvScGK339ZOx0nYlP4hNPKT1g3W7QWdPVwjRA+AOyHzyaW8ACUXi5IoErmblTi49wmxj3xmM=@lists.infradead.org
X-Gm-Message-State: AFq9FYLxn208Y7du5N9QXgufvTp5bmdACUnlekUi+/szwJiUObd53aFN
	kXu1Xdc0/ALFgEscLvhfwyQk0K0qgwznRqV430mediEiz+i8B3kCB3jr2ohPQj8m2speVNXKo6j
	aYuOEF0mnBgITw4W2cZ6CDAH0tdr6qvfdWCUXJKeOJ9ppMXHnqf0WOKbXMSGa2/BCSd2+8u7/+a
	s5
X-Gm-Gg: AYBFou1z7O53U/tFDg2CPaOi7fGkXT1nxeafn7tWAAwo3sgpU2eyYQkbYWrZZUsB/t4
	yOBxjqY1c1ujCGmKlblMRQzcga/I7RQCCEyJ9uF4pWqQ9rBKJY9XQylC8iyiZhoURr0x+Q7MqnG
	/qssd1g3Qaa8Ub46caPSoR9YUg7hvL/u9AGI3BhAphtvq3EHlsLAy6Se+6hopF1Dy1wN0Cs6buA
	9C6lvY5r/dvyQYIxMSeyveZUXktsr/GAKz56WBWryK5EIqYMEfOcJjhpGNuIb+Rsn1SlPSYgHc0
	3zjiD+RvcMuqwE5VmRov+/C6fydaJoIRgXu4Ms9HvU501Cu9HZgY4HTgzHjPTCFbCmXSx3utokh
	L58NT9/KpXNDrOx++H0D++8b0sdOEGmDcB+IjV+/AgiCkFZZqx3ecXxuEa7eQzX0x0CWQ/iN1
X-Received: by 2002:ac5:c7c6:0:b0:5ea:d67f:fd39 with SMTP id 71dfb90a1353d-5ec68998269mr1126390e0c.5.1793366750346;
        Fri, 30 Oct 2026 06:25:50 -0700 (PDT)
X-Received: by 2002:ac5:c7c6:0:b0:5ea:d67f:fd39 with SMTP id 71dfb90a1353d-5ec68998269mr1126352e0c.5.1793366749741;
        Fri, 30 Oct 2026 06:25:49 -0700 (PDT)
Received: from [192.168.226.248] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4cabcfdc20sm65493966b.19.2026.10.30.06.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 06:25:48 -0700 (PDT)
Message-ID: <70997427-6dfd-41ba-9afe-b2c556085de0@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 14:25:47 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: update offsets table for
 x1e80100
To: Tapas Rana <tapas.rana@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
References: <20261030105515.1948430-1-tapas.rana@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261030105515.1948430-1-tapas.rana@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5waxvgBkaPzI4YNGPgeBn8KCvYm2Ru9-
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1MyBTYWx0ZWRfXwFZnWBpt1M/X
 AytHngv/jEHqWI1SGJy9qvfoTP97QYVO+/UI83E2ZNAE+6zh5YrumozLoZlF5P/R5nMKMMQx44l
 iBnowzzQtLyljQPeqkPUdGIdP8+VXeQ=
X-Authority-Analysis: v=2.4 cv=DfSCOftW c=1 sm=1 tr=0 ts=6ae49adf cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=0BQXEinDYilFB-d34WMA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: 5waxvgBkaPzI4YNGPgeBn8KCvYm2Ru9-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1MyBTYWx0ZWRfX03K9gWqKd7lL
 kvXZrQJZkZ1keTCYGGy8+P72UecDsI9pdgIg9pfLVYrQncsFDkKxmoUpJDOEObagAo6+s/L4Met
 5uMXBbSKw4krmz04gWHVtC3cRCxKCP0gFcsX2Q74fHZRdGSjviIBQvEv7g0h/Ft8D6CUAT/nCJC
 VfdBdGQWNL8VK35Es0VYyPSlhDx+HyhdLjZj4ceqL4mSirMPIP2ae9Zo7VhHrYay5RHEphJnAWo
 ZhkSbR+iC8UHaM3dHXF4I6Jh51kI/cWWN3QHwRjUIUl129TbN4iNW/ijESkXtPy24FenA04kSUW
 oBCR+KdGCQcq+3RUUkrjcilSgw2EPx+WUUaKa30qqGlY7xVQLtm4zLeKdr1sc/MTNJMpU8q51gC
 rxUUR85UEJJaAccl9XiSFhCORGDJWVlJ3sn+QI7u77gjr6jcZUXvNGqQ5c/MF+2MKRHqh9aMVuS
 ZlT8LtBHPfqFYBTu7sQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_062553_293464_56C8D0D7 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/30/26 11:54 AM, Tapas Rana wrote:
> x1e80100_usb3dpphy_cfg uses qmp_v6_n4_usb3phy_regs_layout, which
> places QPHY_PCS_CLAMP_ENABLE in the PCS_AON register space. However,
> it uses qmp_combo_offsets_v5 currently, which does not define the
> usb3_pcs_aon region. As a result, qmp->pcs_aon is not mapped and
> autonomous mode falls back to pcs_misc for clamp control.
> 
> Add a dedicated USB3+DP V6 offsets table with usb3_pcs_aon included
> and use it for x1e80100_usb3dpphy_cfg so clamp control is performed
> through the correct PCS_AON register space.
> 
> Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
