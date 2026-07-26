Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79715C53209
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jul 2026 20:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQdb151JqosaXy767fXZ/WFycGx2EMc3mcbfX43F2RU=; b=VfKTawAwh4RDbI
	B8R0v+5JJz789dyMoJy7oWKZXSkepkLkmt5efb8cJnkwPJiOR4KVdqQFKGrWsn7LR+WTGO9CAZNxF
	1l0c5FKwVh97K485MN98+l00+5p9ohnm9bMN+gzvlzHQ9K9OfeL69Ob15/IvdG7LV23LH0vPZtvqj
	lUM9finxTdrkdpLFL8fiTRisMvtCqlObUJTG3cUafkTjeMeapvQeNa//qi4IgI9OQXGqaOh39aec9
	A2Be9uJGupRQH9XSnd/gGljOK0tUjOpssx5fLFJx3TiEKksa1UTYtd7pzBUub17vpxdesAQH1VcTl
	exWKBCVyDlHk7fcf05yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5aV-00000001cTE-0oeM;
	Sun, 26 Jul 2026 20:36:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5aS-00000001cSf-3DQ3
	for linux-phy@lists.infradead.org;
	Sun, 26 Jul 2026 20:36:42 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66QJvBL41678823
	for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 20:36:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dYqZc1K9+IkncN1pcxi2sBhw
	OHcVvXQdWRRUI8PWtzQ=; b=QyHhn1pDVumlhl3jbDzaK9pepn+PQ1ZJK0msTPq7
	jhogMnLLNiwiUHMmJdK225j1bjfH/5CgUXO+5w2a/Bd1FOCpd3+2gOyOLsJzlZfa
	EJvH7J6WCPzRHMBK66VBENbE97iZ2pzRxl8ScRTw+yUTp6TXiMk5w8NVQsMKMiLT
	P9/0ZJou9h50DrrQcB+f+5IkieHairxmd5bgZOwmU1/Guvd6QqYD4cvH+oHi0PCH
	xeAVjXMDCz9a8yC1drplSYklrGw1tcYw2bKIQixoWlI3TVtyY10xFtkYh6yu4FVW
	PakUJneNmMsfEPqzyaTtnQPktv82HrnlVHS0OztP4frJLA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fmn7vbmnn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 20:36:39 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c0199faafso26133401cf.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 13:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785098199; x=1785702999; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=dYqZc1K9+IkncN1pcxi2sBhwOHcVvXQdWRRUI8PWtzQ=;
        b=i0yBV8vcvjcqbNVhyu3VOVBPJMGjuTlPHDMrJcM++DHa3uxkjnvYg/mHqLxchX42Fu
         ykTrAl8O3NNu64p10PomgxFsq7Z5jNjArfAtrT3+tz5MnzbThVftqGkwdU9z//XMmBm+
         M2p826ljakG4pNpRsxkHzBoqWez5pKqSalrX3NMhq8/ojDEI7NPhj4a+/ZtySfKYF1NT
         Xmn6k/xhXyqchrLV6cAr1FCubylqytKdK96Pn2hUVoTKgWjFXkYs6fhFaL2wkskmi9nC
         +fIWd4onxvXlVYDNyjicOwu6r+KjLF16+SXDM+cSqwpakW2I/viLTDnyG/oCev8nqeN9
         hu5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785098199; x=1785702999;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dYqZc1K9+IkncN1pcxi2sBhwOHcVvXQdWRRUI8PWtzQ=;
        b=bKYjQ94GhB7zar5aXgiFJSueVcvcZcXSKAxouU6UaCKyBUFM677zUoFNg+wDT65RiW
         NYyn9Nl6guXcQzY1pKX1aZvqgipN4abB+8fArLA+d4vn9a8Lh1Tsv4m/jjxZIxmQ76Rg
         uu5hQ/jRDFEaxVIb91qcg1o75/bI6SqZDgh6XQyWTBW/GBPxOH0ynayDti3NGxaMBBeo
         VXKPENwa4GE61ULJZOl8Qtj5qH6sn0AHJdjt9AgcUSb43y8LMdV6XQPxOaiWl+lCLsMN
         v/4hb8rajj9TWEvjvsNPri9TNtYCLd+haUBltNVL8fduvgqvSXXH47BB+vWVpryY5rKe
         P2lg==
X-Forwarded-Encrypted: i=1; AHgh+RpAaZ6meDeNTApLV5lnZ6bmSgxiaMk5i9HG0qIetaBp7Omh2Z7T/e85IKj8LhDPhefe7dtxsIENDZ0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5fnTTN8I0ovi2ikgtU/xrMNmjM12z7g8jR6D/2Zofg5g3S6Ht
	/42aHdYhrOPqqumFZpiCZYo/peUB8rzo/zktLeutOYR2A8fifAsJvqjbRo1IJZhdmq/yguqF7JQ
	5htEWjrTLPZtBzTKTVMOLlcpV+wbDTFxYGqM8BMoV92XYWs6XznWVc8k5gzTSt22x8G6I
X-Gm-Gg: AR+sD10nyDZs5K4yMegN/QIsdTaDL9+C3P2dfULY2mPAuxkdUJku05A+AFRg8iJzpUt
	B/ECtF44OHe0tHYUexZWjQW6RB+CJu56B/pe8RANH4Csr3lrl9avMA1xKMGlQIrVL6tN66/ZClh
	oGgT7U99k9i2/Z+ERHx6mvVQ5NvmKaldgNST81yi3nrcU7Z/4bkxEFFatCuQrEWGIW5iLFGGPNX
	nlz5o7qWI4LpFxBRgdppuwDnk0u/OSKmxaW3fWzVBUDC/9bzC2eM7+Lm7/E97fLWUvMzTMlLBtX
	TP7hZFVYyRnKzCmgHHZANea7ApoujKZKBfT902J2VhsaZ8pRZNXg7BYvj73XtfYuTGNJm2vEePk
	zcLVcz8U85PWuY3Rf4O4oRkfc2FjX1ROLIGs6n8vbrTUexIcEdFvKZ2/YhPlOIJX5GqKevgPRkO
	I0mMW3AwXR+T/7XQ==
X-Received: by 2002:a05:622a:1a8d:b0:521:987f:bf34 with SMTP id d75a77b69052e-529a8715146mr65796121cf.61.1785098199127;
        Sun, 26 Jul 2026 13:36:39 -0700 (PDT)
X-Received: by 2002:a05:622a:1a8d:b0:521:987f:bf34 with SMTP id d75a77b69052e-529a8715146mr65796051cf.61.1785098198753;
        Sun, 26 Jul 2026 13:36:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2be1ee2afsm1064790e87.64.2026.07.26.13.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 13:36:36 -0700 (PDT)
Date: Sun, 26 Jul 2026 23:36:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
Message-ID: <izw3biesoubceggbg2jg5tvptzqvqcrwmixqyqi32ftznns3p5@74nso23e3bui>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-1-f32ea6c1a318@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-1-f32ea6c1a318@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GKk41ONK c=1 sm=1 tr=0 ts=6a666fd7 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=5r94vnxKtQZQamoODnYA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: G1AgBCiVAJUVpnJVNyMsE-o0amkh1Vp-
X-Proofpoint-ORIG-GUID: G1AgBCiVAJUVpnJVNyMsE-o0amkh1Vp-
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI2MDIwOSBTYWx0ZWRfX69PJuXONl/14
 NUPN2EBfO8vhS4o8oRc6J842uL0WuTrNnR9pIYo0ZA54TCIZB1ClNOHxY27Lpg9VK3uuj09g+NE
 +6TS/NqdY684kRqyflpVtZOEtGqDdHc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI2MDIwOSBTYWx0ZWRfX0+othlKgKpMt
 0TExlS8qCiWlmR2DmKMagYqf6ry4WFwEO2L/GPef4eEOzRWg8+3FLbH7t3czI6cUEOAfyB4FOOt
 lCOjS5i8MdAPCyAWVDHyHikXLB5CH1VleC3WDsfpoaOy64qszZAfL3gzZIKVidlrPNagcrMJGsy
 3jlBVWJreKJKCybzKqpEM8EbtpFM5dqQf+fmiiOI+FzQtxL6eja8LhHtTJOa0LyDVXAaVvd8Irz
 Dklorpkvh9msjFao7T+4nh+psMEl3Q36eRAPdRR0jrpLKa2IBf9CWgEiqNn5+oENX+ooVGh7ZNI
 yPoNJtjGkGba7OWFLce2Msmp1c8zId0OJsB4dFabk2VPDd/5WgmZhD5skBdZKmEzQZQJK3LwT9i
 zqH6gOxoSioywCwbjwmHRzUYNY8gClF6960TDAd1YPS/BnHUSM2uGAjHq4rnzkdIyKjKgZ5EnPe
 RS/CHPbudXhU0gbEPMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-26_06,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607260209
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_133640_919720_93F7F912 
X-CRM114-Status: GOOD (  11.31  )
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

On Thu, Jul 23, 2026 at 04:09:04PM +0530, Krishna Kurapati wrote:
> Add definition for EUSB2 phy type.

Why?

> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  include/dt-bindings/phy/phy.h | 1 +
>  1 file changed, 1 insertion(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
