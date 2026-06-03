Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 936FBCD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9u0o49Tqthz0ypMdDx82t5jzNcvUV6tzwuiJBU2xRBM=; b=lFYB1NjUEFw1lY
	OBdUYOJfok2SaC/oDuOhaBrwU7a1hLGk2+WlTKTkXA027+2SRKOzmNf7jAGsck1L1yMvGVigmq+9c
	5y6rYT5hVEiULXTBKGoui+AUb4e1bL6oN4afOuXY0ZJbeo2ZSN+3pSni6wHmaxiDYIJ18oZOFqrVN
	prhFNbylD8jUr5kQ4F96NUFxD/6cBXoBBCEaA9yUfV9wQvWwRCJzlTvydFG3cLyMhOMmacZLyYI08
	gmGA/qblvgd8aItu8bUUmNvzWF9l8l4GhisnkiJey+40BXPKbqPOuYaAEu4vrghBVk0P4LGiawZMQ
	2p64fGSu3TxXHYJt/v3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUm5l-0000000FCxx-3KsM;
	Wed, 03 Jun 2026 13:57:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUm5h-0000000FCxH-2yb5
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:57:08 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653CGXqX2076092
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 13:57:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KVLNU2hz7lrMuAYHKsdh7imO
	5qzntYmAuBVg+ugqAkw=; b=p6c2DNWxfGqwaNFrcIrbCkS+18fjdDPOk7lxocZV
	QyzHZ+81J6yNVG1oVmA++zJUYEa7q6t7NLDPQG3DT0xQPR9+HBYk22t2MW1bq15+
	7/vbqwHrfQDyt1MB1cKH6JvvLDcXgP4hkbzZG1X3KG6CT3fxeGnRaOQEDid2xhxw
	FaQq/0XMAiUEErslP1KUFnwntiAqswy/N5hDv/HSr3C+/ccP5hSUXZOGvlmiW+jI
	oEtJQDjkzPRLdGDIsfa/6BJA4dVOgpZnhMUwmmSSbn6vU54MNbnROQir5nj/uILU
	RR+hByJ7Phb6B7a3UUJwZZaNxDzz+RdD7oyv+YjpvteY8A==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejev19tnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 13:57:04 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-6ee0bfb5681so711559137.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 06:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780495024; x=1781099824; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KVLNU2hz7lrMuAYHKsdh7imO5qzntYmAuBVg+ugqAkw=;
        b=BNZjHS+rpXGDKdui3eWLln4puuKuekINdK9PG9bTlt/5RqT0Yw2bj0GcNiQrZeJujy
         O9RdVVhS5CbQWtUBludoJa1q+5BWZRL52Yjx5XbGNZHdMlc5jHSIF1ac327hECZL1LtW
         UZTaqD+n/9H3Imv4uC5pBSXGUieZ9pRl7rGhDCqWT3ZIhIE7tLSP+3QNRkP/6S/G0s/P
         neuCIRPprFQUnE52/K0/a8bH/8g01Dd8XT4dLofimXTjLDmmBueBNOyT9crZPL5Fqqms
         rHKosnfPBttZWzcU4mT0gNh/HKCCbtXc7nlMnQmuIJEQcWkzwRZ2aKkZn/I6Wcph6/mH
         qGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780495024; x=1781099824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVLNU2hz7lrMuAYHKsdh7imO5qzntYmAuBVg+ugqAkw=;
        b=O/P0KRhbW2x8+zXBKMswvHKycKAxpx1bX6laJIrigLuAdRpkMfscLZmnfHFGoG2Jcp
         Af2JLZGjczb56qS76WfpVxUnngGlC8sdvygZDcG23x7C7bK/ImRfu3wV8OWut1OEag7z
         S7r0sun9c5Y67eAQQOIwRp0VNVk/MHrJ7tWbpBr9C9LHAMBxkpieP1ZJN3OMziCEtyg1
         wG93yrZhmfIDTRJo2dUW49fgzOZQcunbhmKjvKBEA0y2F6N4vGKRXa57T9MsTTv4d29q
         wUdbSWATZXdYwkBok+qEQsUqhFIJ9mn1TKhU8lOjVMLAPpTwUvND44kEVChgihorYFz4
         vQfQ==
X-Gm-Message-State: AOJu0YzKyrqHyo2M8Q6edUfMj2INQm64DSiiqLEaXIQ2aatrh+CAkTa5
	9//eGDuV5fpl4Q68NPCNuPAyID2kaaIkAjtfUcqIruy8v2RjQ5eh6RTdD0gsaTOqJlO/sEiw2hm
	4pQRDITEcA71nabRZjTaUemWOdoo7940GbGoZOwTcmZ2WlExHD8w3oMjsaTjgaaLoR5CJ
X-Gm-Gg: Acq92OG+ACTlDOGnZuCIJmuM+JgpJTZnnLHn0VSlLzruR2QRQ6cSFF7J90d1EuJKIB1
	56FcTl/KdwTV9ScKDuUenzahljaMItDQoExCnFVA/TEM35SMn9Ww/ZCRqkA9m1IXbpQrz7MjC6C
	BHaRvQ4OBecLLUS6KCmiI6QCL5xhNP0T/IYAjgl3wWU45rjU50px3c2ve/wfFHwFQPjke0jqlAl
	LE1o6LDXGw2LBah7OEmsP8MQaMrTVB9ou5ekn5SJGYvAplGO1jvrrWFYrbSnikkZ9Sg6F/DnzDZ
	fiBZeCsKCXhU4S3MUrG/8mQJTfKvalWoaJzV/fW+xuQ9GkyTjlqI2hbRa5RXFcObqrwPe/P2nAD
	h3WVTqK4/NUMGB8VWp+6Dmu3saNhJ+XtlgRBNmBs5uSphhrITpEKXNxjtNyeIXhNjTctSX3VSTD
	J/LnV6BysgkrYKkO502hWcZshLH9QW0yMWs+147O3R33oImg==
X-Received: by 2002:a05:6102:570f:b0:631:2a82:111f with SMTP id ada2fe7eead31-6ec6efa43cdmr1764531137.17.1780495024119;
        Wed, 03 Jun 2026 06:57:04 -0700 (PDT)
X-Received: by 2002:a05:6102:570f:b0:631:2a82:111f with SMTP id ada2fe7eead31-6ec6efa43cdmr1764513137.17.1780495023488;
        Wed, 03 Jun 2026 06:57:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b907a26sm672601e87.35.2026.06.03.06.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 06:57:02 -0700 (PDT)
Date: Wed, 3 Jun 2026 16:57:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
Message-ID: <ti5p3oreibkae4pl5sn52g3ctv3ufcs6aklwgbterksrxvxrbj@b6scawz2cqmq>
References: <20260603054809.565723-1-github.com@herrie.org>
 <20260603054809.565723-2-github.com@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260603054809.565723-2-github.com@herrie.org>
X-Proofpoint-ORIG-GUID: gfVOTmzK0uNetp8IUrwqz-jFhIzHZrNW
X-Authority-Analysis: v=2.4 cv=PNE/P/qC c=1 sm=1 tr=0 ts=6a2032b0 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=DB10H_R-sGS9ZoZ16qMA:9
 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: gfVOTmzK0uNetp8IUrwqz-jFhIzHZrNW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEzNCBTYWx0ZWRfX6hFcBpUvDL7g
 SzhqfX4A5vUXPqn2g5Dn5f0lA0Sn/h7E3Eg2VW4M7kKkmgWUliRmYMChzHF9jKPWfEaZH1KUT6a
 mcMTcIASRmugIe24BM9kqTi5j9TtZvI34BdcRCjecLpPW2tYJUsqd/wwuX8cb3ILzgsZHo8vTZk
 YJFopQOzZ/sHXFLg3x5Z/WKwiaizWUyYYFJiKVd7Rakdu6YriQfHlbyeK2+ssUFLR9+x0lFvjVN
 0kPHSuHM0tmPfX0pspA2kSQLcqk/uKRcJ/hI/f+T4DPZ8wawRgS56jMMQfq3JqWDBzAFeHPOFr0
 9p6b448e4TxlJ/+pnRaPJDzmt6sc0YcI8pwJ5qHsV++Cwwu2+7v7L9FZ1SKvDZiDQInO5ceIbzD
 4BDx5VR/Y371vlmN7H/ryXDXbtnAmHlytwOrR6ob8Jz21W3QNvp24hU/Cu0opmhpE5Q83WRfLNw
 GhQDNi82Vfz+ULyZXkg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_065705_892172_8D5CEE94 
X-CRM114-Status: GOOD (  16.09  )
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

On Wed, Jun 03, 2026 at 07:48:08AM +0200, Herman van Hazendonk wrote:
> Add an optional "qcom,vendor-init-seq" property carrying raw ULPI
> (address, value) pairs that are written after PHY reset.
> 
> Unlike the existing "qcom,init-seq" property, the address field is
> NOT offset by ULPI_EXT_VENDOR_SPECIFIC, so the new property can
> reach the standard ULPI vendor register range (0x30-0x3f). MSM8x60-
> class hardware needs this range to programme pre-emphasis, HS driver
> slope and CDR auto-reset bits the legacy msm_otg driver used to set
> via platform data.

Are those register writes specific to the device or to the whole
platform? In the latter case please extend the driver to write them.

Also please note that writing raw register values is generally frowned
upon in the upstream. It's not easy to follow those and not nice to
modify. Instead, if some the values are required for the particular
device, please add corresponding values to the DT using the
human-oriented values rather than the register values.

If you have questions regarding any of the bitfields, please ask here,
we can try finding the data for those.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
