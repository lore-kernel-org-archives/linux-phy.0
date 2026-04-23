Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFDB2FAD41B
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 06:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iuVec2uR67HeBIWr6UCxpyTEl8v42hrFVorxrxgFTA=; b=jp/HYa6t4WfxEY
	48WRe8o/vXlu/W9HKwrGv1S9ogj6HjIdIpDdqyfsrFC6pmgpEVPyDWo4+X4yuvEedsMaC10Hos62A
	ETh0sJtKDPTfLbM6WhZrf8IkgAAMFniL0Xdt0hFLLi8VBCy8cpcwaS6Y1F/a/9hPn5g++WaI5wqVm
	ATQOlVndU191ak+Koo3BDhdLsTCC6NPlSgSfS5cVcteAYRMlFJg2seL1i5B7WId2JRVhEgaDVqRZ4
	7katxU26GA12gAx0psmKc1kmY3eumsik6V6ZMYvFiaZNKZq6cMeMMNR4sYhAGo6r2ypiyA12UAh8m
	WLFc3bJrmGMmK4zTa0gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFnEg-0000000B5xm-0qR4;
	Thu, 23 Apr 2026 06:08:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFnEd-0000000B5xB-1OGi
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 06:08:24 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N5NR162630280
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 06:08:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ra3Oh0VE+DpjFugvfYDPOsGLhtyDlJGOjMAvcNm/GFk=; b=nK768mAbiSZccH5F
	dqJf0QdbtOB3M8JSWnkyfE8e9pz7SIYQbz+PQIO3KUqzJ1zAcUbJH8pL52WKVyAy
	ElpLxGaLiegc+bi6LIbxXD0yhnex7Bw16j65h8G9whxEPZlcPYCnSaPcfUfMGigb
	yVHOvcgryx+4I5PRmtk+0T0FXoKhmaLKvGmudjucwl8D9ba5NB655tMhDBH9vNqJ
	NwSMGBz1Y37wm2WhqUMK1M7mMa50cCQQGYvAJ+vvUUs04HZRM0DETl7p7B3VgI+a
	VVX7WKgUKiSqKdtQy/9NHKloads+v+vhMBAPazOGr1BFbtm0gOYAWsD24Eo2FPYO
	GQefSw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq35ra146-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 06:08:20 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35daf3d3030so6706497a91.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 23:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776924499; x=1777529299; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ra3Oh0VE+DpjFugvfYDPOsGLhtyDlJGOjMAvcNm/GFk=;
        b=Y9aretMfTzsbUPOIWLNVrgIc6iT6m/pmcExGa8+PdNUJzRT2OBN4NjIv64uv/jfQh3
         jSiFbYX496QMlBz4PA+MeKhCupz0GcAzBiefngp1JSGzJrFy8583mdoZ3V3ep5BrfE6z
         Hnho5DUyhfotmq+lyOo7LCffC7eWL+k1QK1PYoHcQckrkev5WzM7kyJneinNta3rmbyT
         8enmRgNBnvfgSPbEeov1kgaxPdZawg6TwK43HidASnPFLhDPcm21v5z2O8K1JGP4338y
         +a9y4PHZzrdH4uMeTKNR7v8wq5GRDsqmOd6z5Ji/9wnprvq2KfEIionjgrnlt7CjyG+N
         tXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776924499; x=1777529299;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ra3Oh0VE+DpjFugvfYDPOsGLhtyDlJGOjMAvcNm/GFk=;
        b=KwDrhrZalWavGpcDrUOqQbb6AqGW9bJ12ORWQdcu7ZvQ1rzy8gRo0/omdYRtObmEyO
         h4dsUE8h8XtzjMji7ea20qMxAXT3fSWh6h2Isxr45XsuPx/KPmBgexmT7lcvX2eLhTCE
         HQONzf3LM6WqaWsWfU/Z7QafoFkX1IrjHjo+4N0AvhSRdiFuWTb+NkAg/uYO0wxCPmcu
         SJsmrG/zSbQeFh7syeKY0/j/MrYiJq8eaf9s+3maHBQwmjbX17Zh4pbDIB7u374Z4Vzc
         xQQ1B43Jv+rvjKxJHwlVyHKCckWeIs6TNO29bjWs79sqgU5HFQmxdhJqOG7ZDr5AL+3T
         1W4A==
X-Forwarded-Encrypted: i=1; AFNElJ9G0XxfTDAwdto3iiBaEH96/knQm/sw0AeSond+U78JlAjE7so0W9SkFuIAEb8+d3mbO6QgkNIqJJQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKg4rJUZxsNncrKLtQ3iMj76YNDyDBNqWXlRcgQf370cUcZyhC
	9gVcSuFng4N/5cfymBkGj3KuY6eMsmPr5zLKTGA/KM692hjZwBk6peZOrg0Lx1Cyv4yOUJ/3Yzy
	ChYmMWoOWgGkJwsTy0NTDpiN8vOpfGsltwlbDULNT6zIELuhYdosqqDhZpwrEOmTnkoFH
X-Gm-Gg: AeBDietl546j1+Vz5BuLwhhoDTSGZeHi2RQ6RNR1U4A8VZQ826Noo4gqQYrQwdKiBGs
	Fcv6cFD6oEkBlrZ6+peL4atInr7kC2VxuQJF6Q+9oRIVxrO3s41FaZaROxg5pBY2N5Gnj0j38aQ
	WAHl7GmLIeBVTwnu+JY+EQQrJaUhzld6RSw8tqtnG3iVzng9gK2CioIPFvVr+6kCQ6G+wqFYodD
	JHhz8RkzUlG0FSvkF49UxgYzjljZJPr1CwDpiY1Cn0Yd8XsJMt9XFEalxjkBBi2jr2b2z6cr8d5
	Cjm8956xv5UP3zI4huu3ZEvC7qBZNWJIek0h/WP8vZSTJeOLVFynL8NFU3gm/9kdClVtnQjIssE
	7XKwKuMthdmH5hmH7S9wLHiR08efxRudkmd4rV6HB/hKpp62Uf0Jxdy8Nu06oGAO/DhjB4YS6sc
	N4n8OTRkN9fZpE+Lu90wWXBUWGmZK5
X-Received: by 2002:a17:90b:270a:b0:35d:a8d9:3b4 with SMTP id 98e67ed59e1d1-361403c35b5mr25168075a91.4.1776924499389;
        Wed, 22 Apr 2026 23:08:19 -0700 (PDT)
X-Received: by 2002:a17:90b:270a:b0:35d:a8d9:3b4 with SMTP id 98e67ed59e1d1-361403c35b5mr25168045a91.4.1776924498942;
        Wed, 22 Apr 2026 23:08:18 -0700 (PDT)
Received: from [10.133.33.147] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-361410b998fsm18948440a91.13.2026.04.22.23.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 23:08:18 -0700 (PDT)
Message-ID: <cd18af00-335c-4762-8abe-73b64378f2cd@oss.qualcomm.com>
Date: Thu, 23 Apr 2026 14:08:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] phy: qcom: edp: Add DP/eDP switch for phys
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <ifwckc6zx3ymlyjpqyt6iqglgz2c4thianaxxups7h5ts7ikyk@m67gguvtkvzb>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <ifwckc6zx3ymlyjpqyt6iqglgz2c4thianaxxups7h5ts7ikyk@m67gguvtkvzb>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDA1NSBTYWx0ZWRfX17lA9f9zXG3B
 zt67D2ia/vL9S55UVvVhMIUNDD31qv2i47+xV2pugBydODt7OFc8Y69Tnbkrg/603E323u4tkpX
 +g3Nei95rBWuXIhwUL3oKZhZnSiJtS/TTrFsIanzAse9+wEONDIr8FZWy+2ddccaKl+qn9jlPNr
 1zPOo5lXKjWejAXU21O8hnXi5EtiNhR2E8o/GJXTfwEVvwdKkCtMIdzoPvLlVk6KVKdW/CevGOS
 YbcYR+y5j1b1VvpAs45TZxjU0Yp01Ttd3BUxAjYmWJPtfRKbcBPoXSQ5swUl0hndkKiix3flTEd
 4wdadZNdsy3qyVnlhtYaCqtEiuGWhvMlssrStR26A2AJi5WWaM8xVtlf2ULC2TlrFPYhJpUXf8v
 RWr3bJfKSj8b9Uvg7wu6C+rrtPldxGI1D1MeAKY7yag1lVXzCV2uY+/N8GfQf73tsv8z6diObj5
 4Clluu9tbCWLVVi9aqQ==
X-Proofpoint-ORIG-GUID: QFC7I059DXg0Yc3VVHeRT1lcsbLL6jhX
X-Proofpoint-GUID: QFC7I059DXg0Yc3VVHeRT1lcsbLL6jhX
X-Authority-Analysis: v=2.4 cv=f5J4wuyM c=1 sm=1 tr=0 ts=69e9b754 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JfrnYn6hAAAA:8 a=WyWhWuvX_BU0g5tmHqUA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0
 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_230823_495793_E9F1E7AB 
X-CRM114-Status: GOOD (  16.45  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 4/23/2026 1:24 AM, Dmitry Baryshkov wrote:
> On Wed, Apr 22, 2026 at 02:01:50PM +0800, Yongxing Mou wrote:
>> Currently the PHY selects the DP/eDP configuration tables in a fixed way,
>> choosing the table when enable. This driver has known issues:
>> 1. The selected table does not match the actual platform mode.
>> 2. It cannot support both modes at the same time.
>>
>> As discussed here[1], this series:
>> 1. Cleans up duplicated and incorrect tables based on the HPG.
>> 2. Fixes the LDO programming error in eDP mode.
>> 3. Adds DP/eDP mode switching support.
>>
>> Note: x1e80100/sa8775p/sc7280/SC8280XP have been tested, while
> 
> Tested with eDP or with mini-DP too?
> 
x1e80100 eDP (hamoa-evk)
sa8775p DP(full-size)
sc7280 (rb3, mini-DP)
sorry for sa8775p mini-DP... i don't have the hardware to test.
>> glymur/sc8180x have not been tested.
>>
>> [1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>> Changes in v4:
>> - Splite changes.[Dmitry]
>> - Add sc8180x tables in a single chagne.[Dmitry][Konrad]
>> - Link to v3: https://lore.kernel.org/r/20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com
>>
>> Changes in v3:
>> - Rebase to next-20260224.[Dmitry]
>> - Only enable TX1 LDO when lane counts > 2.[Konrad]
>> - Link to v2: https://lore.kernel.org/all/20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com/
>>
>> Changes in v2:
>> - Combine the third patch with the first one.[Dmitry]
>> - Fix code formatting issues.[Konrad][Dmitry]
>> - Update the commit message description.[Dmitry][Konrad]
>> - Fix kodiak swing/pre_emp table values.[Konrad]
>>
>> ---
>> Yongxing Mou (5):
>>        phy: qcom: edp: Unify generic DP/eDP swing and pre-emphasis tables
>>        phy: qcom: edp: Add eDP/DP mode switch support
>>        phy: qcom: edp: Add SC7280/SC8180X swing/pre-emphasis tables
>>        phy: qcom: edp: Fix AUX_CFG8 programming for DP mode
>>        phy: qcom: edp: Add PHY-specific LDO config for eDP low vdiff
>>
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 221 ++++++++++++++++++++++++++++--------
>>   1 file changed, 173 insertions(+), 48 deletions(-)
>> ---
>> base-commit: bee6ea30c48788e18348309f891ed8afbf7702ac
>> change-id: 20260205-edp_phy-1eca3ed074c0
>>
>> Best regards,
>> -- 
>> Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
