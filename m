Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B395DCCA470
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 03:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2lQasL1JpM4nV2UjMqJRB9CfRwL6FalpP47uzNzPgI=; b=JeSARdD2ex8Umz
	FhSpKuDKWsnEFwGcslJGi8Y44cdKjidctyI0sc7qZsL9uTWJpfOvj9XrA2avkiCWJb/Mf3ixUjZl5
	5fCoDOw+seQ0j9Mb6AarXhTJ4Yt6ttXO5rXM4bx+dudUczAogrDqf9GkqMQBB7SsfJDdiRfSbzZ+X
	fJ5bY1yc9GIaZ9xL7v1rR9s1dTSHUVKkD1IEwBboaIBmUl12t9vzH6nwqExUIYjFXcmItWVR4sN0a
	DjeTZdDrEGVAUVYGcX9F8Yl5gOPL8L8BxT6xpqvnLgNzrwi3DOje/B+HIBFYB5B63DMYftAU11/uU
	/iZbRTXuvYHi6UOL5MQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6KtY-000000037kP-1duJ;
	Wed, 08 Oct 2025 03:31:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6KtV-000000037jX-1pIR
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 03:31:14 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59803mBB018493
	for <linux-phy@lists.infradead.org>; Wed, 8 Oct 2025 03:31:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WWL+oxTaknWPjEJ9W43cr4xK
	NIzu1kCbsEoFeNIlit0=; b=dUMcassVp3gMljPZyMDp1hQaii9A5T70+AeLfRZp
	oHAi5RF9lsSo+5SRAGRXA38s0UjlaJHa6uVD0bYcRV1rPMOqq31eCi0MW8VUMVJr
	5+L81wNwxLn4+ub7dk4O6tEwCAR+W7V270Y6G46xuT/9Sv56LvwwVqVSS5DsgLJr
	Ay+yCN+ZaSh52FUIpvJzmAqQmIqGUVmDNYWAmBi7Dd/OagOepNA7QytESBy2w6mf
	feLaGvZ5sv63G83b7UMlPqUOuT6uPJm0NtP//duPyap3E3eY43habQBBm9a8m/qR
	hR9pjcMcgEKNvixJwt2gYHUpJRR6X19zRQpJv4pe7p6yyg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0my4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 03:31:11 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4deb67c61caso197284781cf.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 20:31:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759894271; x=1760499071;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WWL+oxTaknWPjEJ9W43cr4xKNIzu1kCbsEoFeNIlit0=;
        b=CNB23LDjPxL/YPOr4/LOcKH03EVQxoibtYsyOaF7HQb2Ze8zlHQZI8jiDtC12zsQ6E
         S9Ky+l7xbWIqD+AnkiK6Tk11GJeMhttWcDNXUvsVBijBluDPTHRHl/FSVOUxF/svVhHn
         AQDJ7TtlJzgUaq198EA07Wz6tKVPI+qu0ONyuRTUn/t8UKxPxshl+dvKuiJM0ux8fRb6
         uUK0S54nV66461kQ9q04bQf9lomaCbFe+fX8YJ1KjcE95gSNnfqK6I9EwIUH4uI+jmn3
         5fYp9XvgZJWAEdSTv/V6PyBw0fI5TftFv6DCkyXlb1YApF8wEC+KIh63hcj2J88amZ/P
         NSog==
X-Forwarded-Encrypted: i=1; AJvYcCVsObWWmgUnPfbExj/6Mcq5O6kqTXZlWCQY3/pTaWYiwoY8L7ujdDS9GNUPYtjK7vbdlPD1KwM0b2M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAk91Hgxq9eCg2x1A/+qRmqLwwHN5GJhpDJ2lI5pDxxir7uHgo
	Bmx1387Pr9ZmOaQcfkpyrZ5OCN4uoNyH7oDPRBzOcSBunZ7SaFllK8Mk/RQCvXUVRIxUxUaFnfe
	gpaC/x08BC2G3OH4bps+0HXyHsiq7xesoAGQzS6Vvl75bP4DadppJyFzBg5q3ErNJJlOf
X-Gm-Gg: ASbGncu4YieXtup3RD/5vVVMa/qYjEnq8jGOajBbyiWctKxjNT8zjwr4iAOw/V0zgJk
	6i483K2BMYkzgb8s0ubyTx0krjgXuxdDnJjs0PQvj27pYLn/fU9o4w5m007XdjDA1xH5RSuu5FJ
	Get42EWO6sIwAIm3OeTiMBqoUlEOwJYGLyDlgLG6x04G15mPc9wXvq5c91QQj9dapU6G3cCJHFF
	svFgBJDt2w1R/JYWs8roe7VoyMCPxGKKgBrA9ArqmBiUAWqB/J0DrH+91QVBuulqZnHEjFrLNXc
	K4R7xsq7j7VVitJSVSiRjTn74tx7RorJNpFQtvFCuJU0fpPygpUiuDU4C1+FdYIHEDO2ZD4FCdO
	f7hgrnhk7tww+ZUw+OnHsd/eKTxEnFpvVyfAiGRyqqHPq1s/ek6o42oVp4w==
X-Received: by 2002:ac8:5d05:0:b0:4de:9f9a:b8e1 with SMTP id d75a77b69052e-4e6eacd1632mr28143181cf.18.1759894270940;
        Tue, 07 Oct 2025 20:31:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpJi9YDeXIx8aKnVS2WDaUwvZAKAbXdQcjcWyTLCETRGIS0rZ8bznBq56g1sVuq6qO6sT9iw==
X-Received: by 2002:ac8:5d05:0:b0:4de:9f9a:b8e1 with SMTP id d75a77b69052e-4e6eacd1632mr28142891cf.18.1759894270521;
        Tue, 07 Oct 2025 20:31:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5906775d5desm979249e87.72.2025.10.07.20.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 20:31:09 -0700 (PDT)
Date: Wed, 8 Oct 2025 06:31:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 00/10] Introduce Glymur USB support
Message-ID: <llyanh7h7xbojo5n5npglokotkuqagbkqdgcquj6aagu6u7zal@wazru6ihqamp>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <a6690fbc-0b86-4725-99ca-6b4cc477b4ec@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6690fbc-0b86-4725-99ca-6b4cc477b4ec@kernel.org>
X-Proofpoint-GUID: 7HkADGeQhT4bk51KGTkmzAjCOU-IoDbM
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e5daff cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=ukQvhT9bAo9IVCr4j54A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 7HkADGeQhT4bk51KGTkmzAjCOU-IoDbM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfXxrXCQScEaTSs
 eFmtaGi2m36eOj4+MvMtuSDl/ZDSvW/tloPU8xntiH+zCU+IdSDiYGSio3Zom0aq3C78zVZE/+9
 JpbDlJ957yqs/xqBzoliZR2eG6TTtVSLvofuN6RgiJwsfqOTki9hr/hB628/h7oN2pip2Y4fnFX
 KQiO7RGKzu85pFSIcJ8mOt2f/ajh+gCOGgxgt2FVdQ8AyaHjnZQO6uuZDN+WYJwe7LT52RWYjtm
 9PUvmkl835iSZa6ObGAoU6lH6NET4LxrANXlPIHA+OXA8J6BnPBDJGF5zOENU4CuIJXPPeKXc90
 kvYWeSL2MVDRJN6abbW73v7GlZZ0KjQsQ4eIoHSzdHD9Jzpf01Wp1xJCtMHVXryora4V0l8ImTV
 pKay5NkFljNt0r+7nVyCQXDOGtiqYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_203113_588751_1AFF5FD2 
X-CRM114-Status: GOOD (  18.02  )
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

On Tue, Oct 07, 2025 at 10:02:11AM +0900, Krzysztof Kozlowski wrote:
> On 07/10/2025 07:19, Wesley Cheng wrote:
> > This series enables the PHY level changes that are required to support
> > the type C based controllers and the multiport controller.  The typeC
> > ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
> > the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
> > it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
> > PHYs for the HSUSB path.
> > 
> > -----
> > Changes in v5:
> > - Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
> > - Fixed DT bindings for clock properties for QMP combo PHY
> > 
> 
> Where are lore links? Why aren't you using b4?

Using b4 is the best current practice and it is strongly recommended,
but I don't think that it is a requirement for contributing to Linux
kernel.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
