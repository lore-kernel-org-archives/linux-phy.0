Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3038EC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 13:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8Xc4kzz/0wovncSy1GJ23RQK3eRPqWvTX/KcwETtJg=; b=uVAj3zZhZTO0yM
	tWiItKitt6B/BlFH9zWVx0HR1PC6DmRIVF2r63/QRvXZFtYRLBZOYH4EueanaSKNPNzyySQY39YJf
	mi2SNYHifvKNprUUE0474Xne38pEcn9tj06BSbZa2aFopGShPiEag3mUIjR5S/4PLUhnnigk9+UJo
	82DnL/eIud8a53dF7240kQP9WvJcXQLTBYW6h9IbuODGSsmwkLKAG3IBxX2Y3zoreiN3JFFpWLP10
	HH3Y+3/+bHTKrYNXttKY6/nBDxnJop2eySafp3+tGLSUR4b6AJCs/H918hpe5V2PSnANNyslXd/xi
	KUCSMIsSLnC5GXs3JcQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whS5C-0000000HB0h-3pOV;
	Wed, 08 Jul 2026 13:12:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whS4S-0000000HAux-2oBb
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 13:12:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3VIl2794199
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 13:12:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dAwAYHVJl3E4TbI2VVqjdHsn
	zZHTiYD97XQNhoK7O8o=; b=NCL46f7Y/KqtocsWLCLwgUh5LpsDujAWMVfQvpA7
	lACOsYf14U66B9Z24CzPiYj8yYIWdHqeDUZ4ZddLeAduA19SgQqdMQcrqLux3UJG
	IyNY3i11me7h8+Xk7rwMlP+Yp6N/VAM7r+dw1D2N+8+8cCctfwhbS4q70Yjsc/p/
	fwjOqqg0D1h+Bi2Uwi+BrvgBSxebJDlS1e5SAXJTgRZD+cxu6k2CXDB0HydDbIHp
	o3NAxfYgH6RT3gnWpJSePco8kh5T7qDWL9LfNulbbk0f3DK/YssT+bBXxRIXH/wd
	Y7WGWtjlbOGuQ2/cU+uvva9nfDYXSzGaP4kUB5xrHpuGyg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9cswagd8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 13:12:12 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-738105fa48fso734486137.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 06:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783516331; x=1784121131; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dAwAYHVJl3E4TbI2VVqjdHsnzZHTiYD97XQNhoK7O8o=;
        b=UhDfUP2FV+4WfQZyJqhBxUL4wGV0IMjYmBMO7EWEsc5z/K35QOUn9GYWqekNYJpXce
         5ZslMsMxiF671r8iY7OIL+Or9UXJbXWVhSmaH+cHXGtS8kmbhggAYZr7Qs7C9B3DnrTN
         8HipETOYUkx1qCVDKspcOYi0L9+R+NnLXC8Z5OQETSruUagQqXd+Idk+6zXRjtGYw7n8
         KKVHL+D8/LqdWRNSdy+WmP4kiyDN244RuJaDTeDg1B0AVCzHlIWsGoT74L3o0E6xcj/f
         mr0N7vcN6E4CmU9GWEMi7tlcWXvXgNefOTgc9k2X4XkgP4KstZvG0I/iYhmRVW1V456h
         SkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783516331; x=1784121131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dAwAYHVJl3E4TbI2VVqjdHsnzZHTiYD97XQNhoK7O8o=;
        b=O1JREfWzjty33assWfrZedY9tm2Lu58FO+d1d5/O2MviItvP7BOyliICDRmEKAJPN5
         lWFIflk25567pXgf1oW6+6lz3UCKAbqyvv9cLkcmPtuNNUozDyDpDjBjdGwCubcoRAMu
         QDhJmLX5hhNgIshw5NJC4SGyAynw4xBYrVCR26f10NiV8KFfEXEf6TZU6b/ErIYw7mT0
         kmfNDp90m8l3oEjEPErWD8vrpUCgE+nFbSwBmUlkQqyoGmgkwd3pVfTVSYv7Nv2fq9Uq
         oP3bBmLBB4pAD6oTsOtZ7mW1eRxis0WmbUTXe2y3XJjYNhHtmwpB3yn5joo14UHi1UX5
         jgZA==
X-Forwarded-Encrypted: i=1; AHgh+RrHngovXxajShFqXX22eut4DY6011FJ79UZMvYPkMmYPXwSveUpAhglP6PTmQfgIQWGHSXUWQmI3rw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxksNiqNJaCBYmNyxM/w2NlOvpU5GWhE4aXucKjp97182EoHHHu
	1Hz0L3J0A0L96utveSwgSjs8NB0eaKRXzS4InKVBaZmhezlfilFRfjFRQ7OeqOUHFYxaeGjDw3C
	egQFwOJP3G5KkG7XabYfY6P8X2x5uK4+zcnrF+pF4fH6cTtsmEmSYKxOMKQH5QUR+Q+lZ5gQV3l
	C6
X-Gm-Gg: AfdE7cnnIpV4hG3EiecIACDVxuoh5XcuJ5OPA0KozfzEp0jbViBy4zNzT38MbJO+D5o
	tA8PERv/iGdHx7KdcKCFLl94gjD1GCvYHrEK9aIWbcm0W8phZ67HmMxkLhjLF99CCuFADAaAERt
	mtJkybdB2a9hT6M87zKqPRvPEbwBwOeK3dtDm+/gy5fEttErviei+oMDft3ZmJLfSm87eR2fUbH
	bi0M3EWkAA8d9Cir4KUDJ+fxFyiUtWoRgKAat8cp0vpgBiiorCQyOj7Pf4oLzfHOEjt/yKVG/Vv
	qQsyP1nGv1+dTUA8wfJdxyrIPv9lQHIXRx6Y69wwhQDEr3os6izw3M+bC3k1kD4FTHLAfiI7t+t
	zsUGMrzP/SYhBGS32u2upRGuhgFq3zAHKqsEyfb2dNkL9RehWMytTa+3854C6qi3wfxCQPOv1o4
	xcFBZEHfeEfCvA3O4p4u7ewh/z
X-Received: by 2002:a05:6102:8350:20b0:738:f27:43fc with SMTP id ada2fe7eead31-744c214b4ecmr3511546137.2.1783516330909;
        Wed, 08 Jul 2026 06:12:10 -0700 (PDT)
X-Received: by 2002:a05:6102:8350:20b0:738:f27:43fc with SMTP id ada2fe7eead31-744c214b4ecmr3511520137.2.1783516330413;
        Wed, 08 Jul 2026 06:12:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13bb685sm4472877e87.46.2026.07.08.06.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 06:12:09 -0700 (PDT)
Date: Wed, 8 Jul 2026 16:12:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Hawi
Message-ID: <qfqxgcjau2x4yn7xuviva2cdlvyxn7gel6bcj32pj4mtfw5ngr@g2edc6d5tcu2>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
 <20260707-hawi-phy-pcie-v4-4-8d9cc6324947@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707-hawi-phy-pcie-v4-4-8d9cc6324947@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: D4i2lUlyVGwAg-G6nLsat8e5Z5ZLwXwS
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyNyBTYWx0ZWRfX/pO//+FRkjEE
 lFCKQQeG6DFCqTYJyjZcg68S0xkv7tlDdaMG4xvGoDEGnBk3yM1lAncbK6gX927//mFtlxEmc+x
 O7CgestOiTPptJRxSxN1GrNT1fTY4tc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyNyBTYWx0ZWRfX8k/pt1el988V
 q69JCX7Hg/vZ0pZcO1xCrIkF4hL/4EhCVPzeP6shl6CqIQkeUnmoQ5Kv5/sk5Gn04lZpqRNMf8r
 5PgZbGzIczcZ3mwldY0eXhavr42xIB2ZxNkldgBqSQuaTbAih6wW306SDNJWdR7L60YExlPgi37
 QLOLGt55PBP9hVqf8ssYtsBKUULoUI99FR4ZDykKQ2bVLcDL2ieBE+DZAWnU89jMnsthrxUICXN
 er+VhAwHIwSCrlgkT/tsSbBp9XaAFtauSTViu+l4SwnX0bWUb9hqmfxvJnyJIKt11v01l1NZKal
 6wjL2et3nLQUEyLRCa9o+VAP86ZncPqL3ECFbSsoTT+AHVFbGS4AvTe1FUOCt1f93Uj/o7mcOEP
 jSQPDTnpDZntXFw6xCuxDxPyU2Btv/7VInUP6XxHxfHG4qVhcBPEp+6HdeYYJ7F+fLSGM79TBeA
 0LAo8/dGMLOSn4cg20w==
X-Authority-Analysis: v=2.4 cv=HaYkiCE8 c=1 sm=1 tr=0 ts=6a4e4cac cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=_DP_PzDrpJ8qHd2sDw8A:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: D4i2lUlyVGwAg-G6nLsat8e5Z5ZLwXwS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_061212_711121_857C7A59 
X-CRM114-Status: GOOD (  13.04  )
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

On Tue, Jul 07, 2026 at 08:32:49PM +0000, Matthew Leung wrote:
> Add the QMP PCIe PHY support for the Gen3 x2 and Gen4 x1 PHY found on
> the Hawi platform.
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 373 +++++++++++++++++++++++++++++++
>  1 file changed, 373 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
