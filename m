Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB493606A32F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 15:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fBff+V8q;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=b0vOnQ/5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ipoPt+J+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ilVcveealxsgdjavc8npMnr/UGvbHFjPGD2Ibzgd5xo=; b=fBff+V8q+HPu4LGYxRbF/1a96S
	Wzn1SLhHoE1djCVNaebewWvQgn4LMH6CB4OJg0SLfziKIVDyo6XUdVNwUIZRNSVEsn3Q5An8y3flN
	dnDW26ByhoN8jQ2nYT1cegsa/XwjmnvLIaEtxgJF4hBe1tIxUe12BLtEJ+pWvqfM6/IlyLGTvPgSm
	AkQVbx5HcWLWm0c7kj8sAVGYVR20kaCBGB43bsBfOFuMz7snyxsJ5n8VaEeQZD9FoiH30r1z8BmlF
	veg5HbM4bDI259yEdal1007hBH70lB1BOQufMp60R9g6q6xaQuI66v3Q2Rl8J4Oap9nlVWzcCllUx
	38zoSoeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLWe-0000000CmNu-2Nsz;
	Fri, 06 Nov 2026 15:06:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLWb-0000000CmMz-49GE
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 15:06:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A6F03be3723367
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 15:06:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	99WHrn39uhF8MOZuOAhU6ApGYxS1ibLGpRDYrU16dFs=; b=b0vOnQ/5IcPAh21P
	ESwufSWkqa2WlHgnCQvEueVm1DX7NhE1muU2tZuVygmfXeGKyHBoVldgukjvcyNA
	wHJhrGNyjOHwbp8v69n17tWUV7cpBxEh038PxRRAbHIV8q4a3sfKC968dFUbZ4nn
	UIhuW9YyJCjbfJIELSgP3F1w0Dg37TstYuzGEGDM40M6IJQjAlkJI7JCaN0Vn7B/
	EMMZfWkF0yt/Hcdqdu2RxVM3ryCPFthugstsCxni4jArW+Ci7CDxUa5q9AvIGfyf
	azg59TGzclW+ENIOPDNd91yo8o91WxoaSTEOMQ1DR/FJGosTbatnFAjLmMfjrafo
	wKjYIQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9k8ac-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 15:06:38 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ead2112f11so26881e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 07:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793977593; x=1794582393; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=99WHrn39uhF8MOZuOAhU6ApGYxS1ibLGpRDYrU16dFs=;
        b=ipoPt+J+WMcTz4VIGKs3X8fsgNcawgZlGL0K//nDkge0Rhyalp878r8OAW3n2QmYkr
         G2J4Bvu6QDgrbq92d9z3GoW8mIQPv8DPVOwiv8RBYc33/X7GokQGsq/NNQrheEGz0YWA
         tfRkQQg9LSt2HUawq90UxyhKqXqG0rgaOQh5psQ+t3Ij7/L/14eKLSkqROb9IDJofccp
         7YCh/KClAcPqrkCHLEQWgHXtMMQ0pA68jFu8hl9eC9I/uJ46IvH1FLh1ZbiO+v5Kz4QX
         xqi5dHawt+X5kOBjYdDdJRAHYoUslq1nTeuGCs9YLQUROktojk7v2jScZpd/HYPjAc6k
         RQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793977593; x=1794582393;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=99WHrn39uhF8MOZuOAhU6ApGYxS1ibLGpRDYrU16dFs=;
        b=hhOzfaW0JoNjcR26+nNGiPOydIujcTxr8xc1xp1tLMQF46SNWdCtdTF+atw9JJepdR
         IDCTKWsnmv2tqn/XnGp0jr33nPXYYmHS3g8Vaz6PK0+pjNBto3HPBJFYPXZKgHrw+Fyd
         UKHUzb5iQCNCmmTWg7pSSxi2TXVuzwEfTi/FamjmSIaFA+59RXfiqQnyXBNtVOVzj9ZC
         KD29quggMtWEpDlwQvxTSAwtZdCwlmNfR4APZZgeGnhz3b1t+4+PTxVrwxH2BSuqGhyg
         M5a+XmM7+1uP5NERN1dzs9xrZcGFajexmrxwczyOiMwCsiKzhXX3s8bLh9iCVrRFH/kh
         y0IQ==
X-Forwarded-Encrypted: i=1; AKwUvBwgYwIoidfQaWI1K4nS+g2jBOJLBNAIF64cVdNz9IjLCIf6vEkBMUHG/b8x5vft+C/jZkrHntkcKos=@lists.infradead.org
X-Gm-Message-State: APuU4Z+gNw4fWjHlfsC/vrXihdIvi9nE/ZAvTvXKKPgRtalJNec+8/vK
	uQDCJTqT6pUccFq6LwznBIuH89lSsz7PlhFc8X9WVKHwnfbSsEJ1rUs7Y2mCCifhWcUarZphsUT
	EbWekDxDOkbvxMIBK/wJ/ksqMaVMJUk5zWHn7YXlkXO1ZcWa5HmEdTGErFAWWTDfvFw/I
X-Gm-Gg: AYBFou3/gyZjICOvh7sQmL719GxWpRFU6FxZDYAzGg8O0umby3OWUrQC7Fip+b/ESAJ
	h3cs4Lfpzd0M1ZoHtxZMWPjCIwP7lAfLlkKpfKy29uS7vvwljkFu/j3RI26joVU/Uz7TGOwrp5h
	Z2cwvb22OA3f+/ikTkJQjlOIcplOwwQW/L6f5utw7ZYgD1LKcUIHtYNRQMT9jZQfSB3Gb0bqxGo
	/b5vZazk+LUdIkAtFig0ug044ptIgWhv0uAzdUtN2gJv7VoTTNXmahO+fPxFII6I5cH4rr7wYje
	2LsSQdz56jy7q7EDfv7qng6SigWtdX8bhm2+Kq6RLZ4xwQ+J6V3B7+zk+tLqNYs8G4dFAm7LfTR
	oCs7XDE1bTpux7yPjdRo+VDri+Q1DH47tFQ47SKPP35owUYojR9DnyKYcLNvmgSPdkBPnvQ==
X-Received: by 2002:a05:6123:4007:b0:5ec:2394:ef94 with SMTP id 71dfb90a1353d-5ecc41a5a8dmr1177110e0c.0.1793977593107;
        Fri, 06 Nov 2026 07:06:33 -0800 (PST)
X-Received: by 2002:a05:6123:4007:b0:5ec:2394:ef94 with SMTP id 71dfb90a1353d-5ecc41a5a8dmr1177044e0c.0.1793977592530;
        Fri, 06 Nov 2026 07:06:32 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4d487be8aasm36689066b.15.2026.11.06.07.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2026 07:06:31 -0800 (PST)
Message-ID: <23b5c705-cd55-4c0c-9c95-c61afb286416@oss.qualcomm.com>
Date: Fri, 6 Nov 2026 16:06:28 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] phy: qcom: carry live SS-link state without growing
 enum phy_mode
To: Tapas Rana <tapas.rana@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Wesley Cheng
 <wesley.cheng@oss.qualcomm.com>,
        Esteban Urrutia <esteuwu@proton.me>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Faisal Hassan <faisal.hassan@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        prashanth.k@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: SkLOb_ho5SvecR53Pe6AgHBAhb_MraEn
X-Proofpoint-GUID: SkLOb_ho5SvecR53Pe6AgHBAhb_MraEn
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDA1OSBTYWx0ZWRfX127nNJ6mWgIN
 Q/YRYiiQKAfN9UoAFTP3PxjpcoECelYZOgOYfbbWelqcfTNKTtT/KDVLOHyno0HRv/Ja36nCFzF
 WojXN/kRzroCWDSPvtbGnXshPMOgJ6g=
X-Authority-Analysis: v=2.4 cv=XvNvqlF9 c=1 sm=1 tr=0 ts=6aedecff cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=UEx5U1dda6wf6Co_AVQA:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDA1OSBTYWx0ZWRfX5uh8bbtOAeSj
 9PKTp2V4sgUiEuzym08jwAJtiKBEidwFb6yvbM2HkO5IVNQD0/r9StL6l5kSv0kxmHuDpHDycwY
 FKGaK+PJQhnU2h76MeMSqpGG+ayvSiqwGiZ4Ef6B8b5ohywFpDgZHNz+apxdDKtysbYac3hmQdC
 dLsjsMW7aV0qL16KQJVEVEoPE9jiVt/mTlASaMLyKBKnjBKaXhyfHw54rRpWclSFSESR8lWh4DB
 cX4huxFcPXV8hFMH8F+dQy6Mo+h5AuAUGkNcADS7wJFOHPL4X0eVMZ3xX55vrhl75wrWMHohI44
 NJ+mEUJm+oPtE6QE5z3nOmUQQ/FwUadiFtK0XcYATavA5S0JiLSw/cHH/pSIZaio8XopqGb6SV6
 /SgH5JiMxkylr9XXS9/m5GB4KsjtPFLxKHC51t5YMqL4Y00Zq2jKDiVrWajxamNsWRQsHJmlitp
 5AQMVk1aAMOfBNEJGSw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_05,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_070642_246165_77D2F82E 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/6/26 9:27 AM, Tapas Rana wrote:
> QMP PHY drivers always enable receiver detection (ARCVR_DTCT_EN) in
> autonomous mode, and additionally enable LFPS detection (ALFPS_DTCT_EN)
> when a SuperSpeed link is present; otherwise they fall back to
> receiver-detect event selection (ARCVR_DTCT_EVENT_SEL). This choice is
> made by comparing phy_mode against
> PHY_MODE_USB_HOST_SS/PHY_MODE_USB_DEVICE_SS. However, dwc3 core only
> calls phy_set_mode()/phy_set_mode_ext() with the base
> PHY_MODE_USB_HOST or PHY_MODE_USB_DEVICE, never the _SS/_HS/_FS/_LS
> submodes. 

Without much more insight, this sounds like the place to fix it then

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
