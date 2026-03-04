Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2E38EFCE53
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 23:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hX9dFrsyg11YO+kmQ1ho1QlIvohNYNq0SruXailtHQ=; b=1HVILU/7VSfaJt
	SvdNHDoo384lRGda8G/1cJ7AV09kWdcemOFlZpy8x8cMGMrvTrDiUt7GbZZ5qc0OhCbYATvFFLKVk
	8ayePsk/wXUtOgQXJlDIJl+yll0O8zYGNp783GFk+M4agljhWuYVDYMALSDQ2fkulxiilPw9Rx8Bl
	d2PVBDxNzWsWCZMXF759h3ZEA5FFHEDt7t3XQxA6BDKAOCr2xPxmpLGuZc5GgFJ1aiMqrKjkBuB+H
	iv/jxLAJJQLxPexOm3oEt9WdJnk8iHYHQxs4GayBJ/P7KSj5VF8qwdExWaUr9RZSQ9V4R3AqzfPtH
	mwdKR5Y+O4mfKtIKM5tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw5N-00000000fIN-2g4m;
	Wed, 04 Mar 2026 23:57:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw5L-00000000fG9-3XK7
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 23:57:01 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624MEhgo029304
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 23:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=La/zyW1kZlkdjuba28Y6cKUE
	jgLjT1PdHqsncSoONxI=; b=M3gyhoDKsD95tRqPBt6AVRtUJ8xAewA9091Llh/v
	3N7WGAoRQBPzVIJQ+qMMIDlNc/bfennDxIAH2TEssBH789bj2CFI/9WHiWumbLtX
	Ql5cWWDkmHK/HrduZFYdFIBCxQbuZCUwt9VpsjOneOKdaQDvPYtLjUV+u71lyXmG
	dmxjU+qXynuSopTYtoQMCaamDnBl8AhwF8OiwiX39d0m+NMjaFXCFWCfbfdsFV2h
	o+l1R38GMJrzXlm7o2GPUvHPn1156OUgdepeJ2YZzwgJPRbOnHzpNxoiQgsN2xDS
	DJcDnZ8howbsvkbWgknRmV8ZQ+d0VG8z+7CPjjKVm1P8FQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpp4fhr3g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:56:59 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-899edf01747so333403436d6.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 15:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668618; x=1773273418; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=La/zyW1kZlkdjuba28Y6cKUEjgLjT1PdHqsncSoONxI=;
        b=YDyzOGi0ddnzwY4FMICq2iyuqGv2h01cTEblYeeeRMEB7sopP/WdZQxbXmb6D0Kgdd
         s5gHb6NZPWGJmIYeS5XWBi6ORXFyrg1a9sxgUqLC9HH3QyKs9NEirddwCpknLPDccb4N
         xhh4lyr1cib4f2j2z56IoXJEWBcBFR4AV9LMaTBENl4f8y/LkUWHBSnwW80nMt3hQs9f
         Klnap+hztbB4d0rxnGLxvTRiZcSf31odNkB6hKZx9BSiO725dnG2hdFziRFAtlXpWSmf
         Qx3YabHAuozIErvjH7cI559C5TmdW9ZTR+oR0DtG5OwGIWZADZjnWQ+3REgX6xBhHVmF
         HkQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668618; x=1773273418;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=La/zyW1kZlkdjuba28Y6cKUEjgLjT1PdHqsncSoONxI=;
        b=jtD39r5kzOj10YxOZ3quMUXhbERIGuBFkbJKYkC7KvBbowr1oDNsFANr8MIJTfXdxC
         Qpc8m9GMs+d6rvW5YB9y91Qs+vSFSjWQbCAdRoOI9r1dSH4IQX9p8yN346H9WDpvK0Lo
         XA+U5Ptr16ObN4mj6jgZFYL5P6ylS2du98PDRtOYsKqV3fHIFCpaK1zNDHeGbArdnpTR
         KN2TH4yd/B0Ivh7iRg+VI6PE3anXxaGBzGTT9V2vwuRiwIlUPscY0W2wWn5cc5vd7BUg
         5p35mvGhp2Xrc1pYE9M1tiPlTyZh2bBAmGRlq+fsmDdDK0Z7+iiaC+Q1ApR9Fz598HzN
         zeJA==
X-Gm-Message-State: AOJu0YwWNGIZMOxc4V+HuVG7Os3uVxWcqh9DHNsEosDF8IjB5OLLbqAW
	bWgVv35Rrwmttu5lmL5ZRu7P2vwUWXh2/sjFMcSmkmqxpwlD596ytBoUXMN/80jNgfX7tIeOo/x
	ntdfC6dfaV2jsMOshAboM8cn3Hvxqd8Ir/1i8OOiveYjQ2IrRfn+SciIcDXCswdxKrRwF
X-Gm-Gg: ATEYQzyGLdTVm7rW5BvYScILed/IhHzcSkWjlypxIi9mBD5DGXDiRnUb3lIY6eb2JmT
	5LX3dPq9cLTNULPq7mh/eS07zuzgSH3Nl+IOhCgLy0UDQCBpxvSV/BwrJyPIfsE39gz9ukJUyYG
	V87aely5onO5SMAe3wOsUTw0Il9S2gsNEc9n7OJAyffTKntj1qpxUBGugm9EJIW9bhxWrsHMAiw
	WX3TrsoGIHp7JxIWUY2FrrDO9kVyTrKeWqnZj3GTdRgURlQjtWrrK1keb+g3JaA0IpF0e3dlxf9
	m8kdHUIQpT+JudCUDmgOwfVEszEfAqm6iJnRJsXHdXvhXTIiPiCXz/QsFsKaqdHo65G5WHNuxac
	TVqZjr7+ICnejDhBwVLgDYf6lVQ2tkoEPJ1R8zk7Fln3/CRY5wBsgZxyghoCe9VA4Q2qOwvpY5i
	2J6H1iZufgr+FxWxX70jGCH9MjDwiGYa94JUY=
X-Received: by 2002:a05:620a:44c2:b0:8c6:770c:40d8 with SMTP id af79cd13be357-8cd5af775e5mr481319185a.40.1772668618477;
        Wed, 04 Mar 2026 15:56:58 -0800 (PST)
X-Received: by 2002:a05:620a:44c2:b0:8c6:770c:40d8 with SMTP id af79cd13be357-8cd5af775e5mr481314985a.40.1772668617932;
        Wed, 04 Mar 2026 15:56:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123573df2sm1571493e87.65.2026.03.04.15.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:56:56 -0800 (PST)
Date: Thu, 5 Mar 2026 01:56:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 21/22] phy: remove temporary provider
 compatibility from consumer header
Message-ID: <o3yvtltydr5hvve2htwgqbp4bfopgu74ft4gnyelmges3hmiaa@wy3brdd5dnek>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-22-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-22-vladimir.oltean@nxp.com>
X-Proofpoint-ORIG-GUID: SocyBb0nGMitP1tavQbUQpjv0VeWy5SZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfXwSxosMCquYpA
 4A238uV6icMUIpkrTSDREra1LGj0VsudxInLHkcC9OWcGdA53bLN/Y9Pm4GQWYajz9VZ7fN+f8u
 tSyXj5d4heF6dgzGDWo+RDFrMe2w/Zo3kZ9iUbIRjZmXb5gC3JZMqSRk3lO+dmyF++UuzLEkpeM
 KaHnS/WLw5b8qe068lhN+iSwBMRIHiZkA9Mbn9Zj00tbifEUx5w64SeVM+sgGsu+m0YTuj9hhe8
 GV9Y0HQoZyy6p+z7hElnmyfpwBkqyIgwJSdzLPHn1qiFCO++H1BadjcOLMIrk1uujRkVshTQFCY
 35UmB064m8fpQVC1dFxgzySt5uwHXg/U8d0jrs6qIz19vqamLTpGOaZEt4GLHz4Y2MB7La1fHX7
 V7yy6oT8uOYGu9kDvjsiDbRIkRZWnA+TESMYHzejxEeTld1m0+56MPkigbTOSvx/WoD897bWRAi
 lEj+1JSb0jh6/wrzJ0Q==
X-Authority-Analysis: v=2.4 cv=CdMFJbrl c=1 sm=1 tr=0 ts=69a8c6cb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=Ji6k5uvf-STsHdHMmocA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: SocyBb0nGMitP1tavQbUQpjv0VeWy5SZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155659_914372_23FACAF4 
X-CRM114-Status: GOOD (  11.85  )
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

On Wed, Mar 04, 2026 at 07:57:34PM +0200, Vladimir Oltean wrote:
> Now that all consumers have been updated to no longer dereference fields
> inside struct phy, we can hide its definition altogether from public view.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  include/linux/phy/phy.h | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
