Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FD49C4452B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 22:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQZQQLry5HxKeh3TUBpBr8OMz9VbEyyyncnH0xZDCYc=; b=L1hdHN6+YfEFYW
	Dp9xtDiEqzGuY7uJmUMG4Dj/S8A+RU6Tsi99TwP93+ZnYLbzcDcu7MwHvlXA6jaJy38SS82n1xVNw
	jQ0fR24zC4SL6Uq9Nme2lYSnCOHTGeZr5oZ2aZjhm5xNwj5AipVebER1rMyKEsqE3eg+lnqQZUWy4
	BsJuNPUYxCkvOYd3KTfa9kQ1iOvVSrTT60M6rEi36biT5Cl97EyEMBuqa7jiNhKNNoCaibjINxYGq
	B0e9StN2XaTa1LaoWUEq9xQ6RplJAT6vW+Cj7QrK3gPBlVYKeLBkBO28hMHTVr6vI/yUCOjGc9cpc
	b8+ph8aOCaPwFGOy6Bvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJFX-0000000AWyp-2v2N;
	Tue, 21 Jul 2026 22:47:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJFV-0000000AWyD-1DlG
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 22:47:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LMZ95Z3185315
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:47:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZVRt+INxjSHKZ1UIV6a4RAoD
	Al3Kyyh9gvcFPMDgkLE=; b=O4/qQOuKkGRyWh0fTs/B5ziOHMwa58TywTfbajkG
	v4251LhcM8CfeToBoDB8gz1fBUO1yXpp5l+4xCIr5JPzQ9+NueO3eFVE/Ks43JFJ
	BL0z+SmfwCoGjY3X4ZQWQ7JWBUngFGGeJt49phcjjr4WPlEOJ+9+11hZgmCWrbMV
	GRUzN1ED8H38OfOgbRvfmIu57+AEIrM7tuAgIyzAB4hNwP7haPG/1bpI11vD/9Hj
	cJOo/9bbO2XMgiqZp4nOneJved0iGVjyrCol9smkSG+GH+Yy40nnOTcLcLF1eSXQ
	Xe4ZO++XwkOSPOp1cI3vUdMdIzbqKE1v2bPuyQz2qx/Iiw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6d962x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:47:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1d7886cdso128855941cf.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 15:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784674059; x=1785278859; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ZVRt+INxjSHKZ1UIV6a4RAoDAl3Kyyh9gvcFPMDgkLE=;
        b=Z+h6H7uHk6fybIhSOJiSrNeCbZKrsdwrzwA/ceerr1q97gJaQHxGNToHFDQWChWooV
         GAnhpSnn1xuq7pr+ncCBmnNHgu7A99dQw+GKsQn2/DX0t/DhyVx0+gN5Sd0/wcPRyIXb
         kUZbVsus9p20G4UE1yDeliCJDJdlIMhEWpfgWjM7jdqzh+osfL0SDPaZxtHFEBIiiwBc
         sGcPdqzVkaneoHjyyeJLW7ZeE9oEjfMDQ3GUTDQFgejTKIfzr1osKLcjKIHUS1fkNCkg
         WD8MUXsGwPIrRtH77ArnJdkRMWC5SjSBIiMqmySSY3HTikU6xxSYkop0U+g+FNV93xJy
         adVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784674059; x=1785278859;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZVRt+INxjSHKZ1UIV6a4RAoDAl3Kyyh9gvcFPMDgkLE=;
        b=KA9AK17VPRz6KRc17Qur33/LOfDJ2n7SCebZ0nFdRaYmBGxuRtoDhUukpeR3qGh7QJ
         /Qj14cuaxf2RQH8tO27yuJEtC/TKMNrknmj4vmBk+Yxtt4Z7DhrSe7Rd4v4dYnCldPbO
         W+Hib9rHXizgjWTceML4DDAaLNQWfY1ga0tmXSIZiHO+RMqd4RV1Km9RKxEOVK23QTRC
         dn1Y5NyH9p2ATDBAteimEpDNeutkucGCmxsiCwJfrLLrUDVHNIX0Xe8m7FIa0k4nwOcn
         5HyFLFIwSFhHb6qucWT14/zjP15Yhj7GHeAmZWQvdsMX3XT1RE628kRJsjcK7gVeVmiY
         3gMg==
X-Forwarded-Encrypted: i=1; AHgh+RqlKMGAA3VzeqwwXASCvjrdzzll2loOKHwl1KNx5dGnvJuKGsux70zbL3JKiiELkwFDBnFLutLIZwQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBq/J20SAx3lkWN/ipsPeu8thawm5thHHMXxoau6m2cVVJAiWs
	hRPZhxl+i/t8hH5/MOdkvMwJ0Jr8yV8Yi5aBknDTleRAE25FblshubxTXvWeVIVYMCxZXUPIXSJ
	1NirKdO/oYZhWl+gRz4duWnC7eT8IO03bGDVJMuypPQrBuIYIeEXhSpRENX882qPOdQPU
X-Gm-Gg: AfdE7ck87duihusvN/tN/alJkqDNzDc6PVDH2ttwiqmbYC4wI4F3PiEVxj9wDk5GXvU
	amAymc/LXDw3BZZlLTZ20BJqJjkvgyR6lnhtCtBfXQFkDpZmw4AtgyuUgfztKtFA41S0gwcUlnC
	VhrA/M4Tl0orJ4Td31fk09GkDJXBCh4YzZI00G+WjDtsAcS8A7Cjpu8U6Bqlim8Vtz9E7+S+m5u
	fFLNEn+f1lIA5O+DuKHZCreqhcDCVxn8czp4Jp9QxRpgxFC0LuR+RS46ZznOOJdOkNKkb0Q5G6c
	qVsv0CrVaC7eB9EPy5olN4omEvVIHrJnUHxThRcwoghit/7u0EJWfy7Txn+Yk7g5s6v3z61vQYh
	M8B1AVdP4OVOv6CxfAPs28bOFGqrkXIHS+5A6Ak3iToAXuozDY1sh6l+pQww37O4S/b/9lC+Pva
	7D21vXMBEChMgU4A==
X-Received: by 2002:ac8:588c:0:b0:51c:e6a:1b5a with SMTP id d75a77b69052e-5213a47acf8mr200832731cf.12.1784674059439;
        Tue, 21 Jul 2026 15:47:39 -0700 (PDT)
X-Received: by 2002:ac8:588c:0:b0:51c:e6a:1b5a with SMTP id d75a77b69052e-5213a47acf8mr200832471cf.12.1784674058899;
        Tue, 21 Jul 2026 15:47:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9d30758sm146804e87.45.2026.07.21.15.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 15:47:36 -0700 (PDT)
Date: Wed, 22 Jul 2026 01:47:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: esteuwu@proton.me
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: qmp-combo: Add SM8475 support
Message-ID: <j2oyolcgxtka734fn6fmv2fk7em6zkmrvkivihtldbbllmy4co@eh742ign7i6q>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
 <20260715-sm8475-bup-usbss-v2-3-2d8def39b190@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260715-sm8475-bup-usbss-v2-3-2d8def39b190@proton.me>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDIzNSBTYWx0ZWRfX3+JmPzoAbq9g
 10Bub7qvw1zryphHpNWNVPyBiRWjDCW+1r1wvz7FDWvNBlSfri25zbpDNA9p26SN1CEXlQeXiE6
 XBpN/84s0NzpOv4GN5FCuNKsX1s4lf4=
X-Authority-Analysis: v=2.4 cv=Ipsutr/g c=1 sm=1 tr=0 ts=6a5ff70b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=0cGqrpNjlybS6BQeJRMA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDIzNSBTYWx0ZWRfX2yj7wTrOjXUP
 cD+r+OhBwCItl8xUmALbQmRbwvwjzWKE0PFGf1/LZLltQDBQaJLL7NDSwJMpwEURu69nmZUE+Kz
 PpTbBt2AnaFV/5Ffiq78jZ+90rW4VNYl4XjmUXpc+HQ9LEFQzQskSVijwmY+URvEHfjZtlOnrJH
 koB6/FUFO/GXPJ/jSjIs6ovs5C9bL2dF9vr1kPZ22Y2kNAEWg1R1xk3MQ1FaHbCryw09ckAyNOW
 wKCDP9xhhQPkWf+QK6/iOVSv3XOy7ViNY5/OVzVS9bzJHYgJhf9dQPlB0tWWkH5BMiOHK/Ay2/M
 g4jx5lS1hZUcwrdcQLtEQ24+B+KcN8rK/AZvt9MfizgGwahJuo4hHQoBiQLC6NmzVMNu3UwCUdR
 XZAqYEgXXiHPGUvplLb9gn/NdXjH3j5oHl7gvERIYbZjqgbIIUxsPgWp41NNdNHW3912O/oDyz4
 gREdx64S9/TjfFES39g==
X-Proofpoint-GUID: oJP91c6z0hKraRht9Xh6q6MFJhvz64Mq
X-Proofpoint-ORIG-GUID: oJP91c6z0hKraRht9Xh6q6MFJhvz64Mq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_04,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607210235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_154741_463303_DE348A33 
X-CRM114-Status: GOOD (  14.96  )
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

On Wed, Jul 15, 2026 at 03:06:56AM -0400, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> Has been tested with the following capabilities:
> - USB Type-C at 10Gb/s
> - DP Alt Mode, using HBR2
> - USB Type-C at 480Mb/s + DP Alt Mode, using HBR2
> 
> RX and PCS USB tables had to be added, while serdes, TX and PCS tables were
> reused from other SoCs.
> Since SM8475 uses a v1 PLL, add and use v1 PLL tables as well.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 169 ++++++++++++++++++++++++++++++
>  1 file changed, 169 insertions(+)

With the v1 mentions being removed, LGTM.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
