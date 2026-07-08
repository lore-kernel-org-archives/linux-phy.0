Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEB30C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 13:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZ7cEu0YrIEQyd6SwCR2zRDzc1R7VuleCtBZOhHBhmc=; b=VI1wJI1ON/pSi6
	yii/PH35d8SFMH84FO8GKkMFwR3NmR7gEs+FhDr4bdb3hNyqXpHu95pnv1kaQUBF84A7jLou/bHX/
	/uPWCK6dch3fflPXiOL6s4PqI0G4HLuOgl31U/J8cU2y6bQP+k6TKDAnsAX5HjnIq+qr8lvCeygLB
	o62Af2NVpdV+LnMcKhFntQb0Od0CcK+rjebfnzPFiLqWYcfNW8LXQ5ZfpBcPDjDmEyVmnESq5SzdS
	TRyIrIJFUZbrJozFwJlKudJdfy3ydM+hYWF1MWR3A2ybQ4g31OWX3oA/9ijL/GSgaEeBDs11HU9+R
	dKWq/s4XrDhq9XkW3faw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whSCO-0000000HBpp-2ieI;
	Wed, 08 Jul 2026 13:20:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whSCM-0000000HBpE-06Cr
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 13:20:23 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3Wr42579695
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 13:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bfBaTt2vbCjk1B2Jo6sg0jpl
	Sh7IN4ok/ouN5deZkV8=; b=VtljhVoYNJyAFd3V6Eqpoa6CMYoOG6kmfYLd4xHv
	wKKaF1ghwNY2r39KUgeONcJYawGn8OUMqZoWbjGUJ2EBeuNS/YoFNEpMpjDMZffA
	eNxyp1xz2MzcY1IJ3WxaGLXfEO36NZLgqW7Y3PuW6tVo7+mYS0v4B+kRZWSgv+eJ
	fA3r1bR6IJCElAzg8OIXQqHAL4DvLwCbceFVbqTkuKcj5coD5CKSiBQiZm1tYK2E
	sUs+R4aOOMMdnE/XEUB2Ky0xCAL6hbCceGGTOcJlYeBXnCB2WYkazk+dKb/4TguB
	bzjx08bbd8edQ0PpcapPSzuF6aCxpqb9fMQ/5JeBi1uMjA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9b5gaw4k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 13:20:20 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8eac2620cb0so11031916d6.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 06:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783516820; x=1784121620; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bfBaTt2vbCjk1B2Jo6sg0jplSh7IN4ok/ouN5deZkV8=;
        b=D09D1zz0EUeNb9GJil1Y9j5Obn1rZwifh1sYM6Bx/O8C1QjjHWruWhaWWtJLnTJEnp
         8MzUMwf6S3srlg27pCWgdgMdiOToNH5iuBaRswTw8/eQ9GYfhbSw2xF+Tg/GvwRLo2Aw
         ZHufo+FRXTnQzCxWnGc73C2coE+2cEfAjBlDIa6JP9+nt8dRC7m5fGpwRqTGsW/zGAxa
         o4QBNshrIAdGRUbnitb/qDa4M2GDnA0VAu6q8oscCI2hHJTmsKfDq05L9g3f6I3Er9j8
         Xhk0O5wXo/g3AxR9ULyu7unfPX54w6dphXBlx6vQZFfaeV9lHkZM+B2f7oKptBCNPGai
         eK0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783516820; x=1784121620;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bfBaTt2vbCjk1B2Jo6sg0jplSh7IN4ok/ouN5deZkV8=;
        b=THza1lYKkYDHcWorRsC1oK+5ncTGtGPp0Z0UPJ2CIxFEejqGlQqUNlWCp1X3dUwO0m
         SmsPIK7Jk5Ih94LfDDZrlh4HUYdw+nvSWMvxJhqDWQhkp3zj/LEpNOhwZZLwTUBtvY8t
         fYhxxJOoy7CErjOrP8OrhG9u7q3Zh9fozn6mShekaL0lf3DFGE+PVp1OirRnm14yJ12w
         ut1bTDJUsO5SRvBSbqfetl3WhBgXoykqfuGXotFO1yLkYPsS2SHWI8aVQjYMqZlmxUoy
         VCIR1JTVYLFNkqv/jnQm97sufy4MFnmyX4IJMOfnyXiSl1Rzp2vEqzscxS+NVKQZiVWZ
         DJaA==
X-Forwarded-Encrypted: i=1; AHgh+Rpz3lTnpuUiOP10lpwZZlM+Tyvc7spHH2S93SgDlbVKO3Eh2zgMc2iJmezayZAJ6ARVpzM5mqoI/TU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtOutwyQPZ4CZfw5B9tAx76SInk1Zm0Sxn6PB3+jSxvZnu77q0
	3XiJd1n9nO1Ky4xHGwWv9EXJJkadcDgo8LuF5efRhOUhimeT/R8XgJz/dDj8v2LxQx1umMbVLGt
	RxIXH2YHPqcMcx5ri/hCydoPs1g8RzaoPQ6zSnOfmuFwrD25C+KCISIz+cuijecF6b8r5
X-Gm-Gg: AfdE7cn1XdVvL7cmkUdfLx2ZKWbgMty6dzdP9W38Wnmq0TpAKAMsXXHMuZ0vBK/DkIy
	hRlpgOSk7LS9jMwE9X5EClcKCNNv2vo8JuQYkj9uO1h4NcVARnJRHcKDZ+rrSh6UtPolcL6zMRv
	gUnFuMyJLJ1PjqtLJtjZFxnXhOkszbH2avrKjvhz/v8rTi48kz4VViGd3zAo7/lGwzNUl3iivYI
	2AC3g0Q8d50KnX8Nw359Byd9SBDYoj0z4Dact8TxpgerIPaURTwDnmrEXLnBzcMVycSswH9dIhf
	EQCsljWUWs3viUYHVd13eqHu4ZjlDS+yYralHBCcis9iJh+su1gsT34vfX2K6ULCOZiC9U6vSJi
	thY1lEY7ExENXhFa+yfuFH7x5dTqYKoDy87A4d8+oGpd17tWh7HXR3Wkx23sKGoefAk09GO1dRU
	UmbVydhCvu4dXoaJbpsIwg0sL2
X-Received: by 2002:a05:622a:191c:b0:51a:8c9b:64a1 with SMTP id d75a77b69052e-51c8b40e801mr26371211cf.69.1783516820239;
        Wed, 08 Jul 2026 06:20:20 -0700 (PDT)
X-Received: by 2002:a05:622a:191c:b0:51a:8c9b:64a1 with SMTP id d75a77b69052e-51c8b40e801mr26370771cf.69.1783516819685;
        Wed, 08 Jul 2026 06:20:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13bb868sm4462264e87.47.2026.07.08.06.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 06:20:18 -0700 (PDT)
Date: Wed, 8 Jul 2026 16:20:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sriram Dash <quic_sriramd@quicinc.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Subject: Re: [PATCH 2/2] phy: qcom: qmp-usb: Add support for SA8255P
Message-ID: <5ucpcgiwlhbhn4m63gydrioyznpxnfq7rgdxf637qubikt3gqp@kivbak76lvtp>
References: <20260708-phy-qcom-qmp-usb-8255-v1-0-8d852a9535db@kernel.org>
 <20260708-phy-qcom-qmp-usb-8255-v1-2-8d852a9535db@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260708-phy-qcom-qmp-usb-8255-v1-2-8d852a9535db@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEzMCBTYWx0ZWRfXxc3tt5+G+Ovw
 jr4PVML2A4Mgr90T2p3aVu9jMbIEmcs3090pLvxMUh1r7+Mi5rNv0CcA2E4+qqzAPCCMH6u/KgT
 EIAAKYLpawoL1Yjg3wCcGTjatY/TxcA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEzMCBTYWx0ZWRfXxyM4oADUe8po
 6lWqEl2h/aeJDQ0TaLWXL3fg0N1xetvNLhV6T/GivTbmJRJsaIEWYLKJyfkiAwBCqt77c8PWGt9
 aTo4eE/SqX3SAquz2Deo9CdTZ9K9QNpK8lpOVzcrkpt9uLJLe3rKQVtGu2dsygBokeefGPBmBx9
 Z+CBZku5pGo6DEK9QDD3BF54jmYlfvERy30ut+Onu0ZN4j4rXEj4VgLof92GrNxa8FGqcGcrJTy
 6wj8pCnowcs30/rOfOlKtBuZ/PvSBJ0UZP5UuSHxdLQMIKXrmvr6qBnAv9agXQO1sbzTYmgZ/fO
 2BtADrWADI3uxJxZPNwldqWKOU2vHJ8qAZgd6NVucTlGnRb4csAf6Ng/NmBXPYffPjpGDWQMVlk
 l9uNCHSjviC5I5ebhJUZJvSCICY0eFaTUjguJx96V3VN6cjb1pm+LOkCROoVIKkrEuvJ4ZVUYgT
 Bsrbpy+HxfUu3KDSTnQ==
X-Proofpoint-ORIG-GUID: giJb1vv6J65Be0l-b-MucB4-p0QJNYmV
X-Authority-Analysis: v=2.4 cv=JLULdcKb c=1 sm=1 tr=0 ts=6a4e4e95 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=COk6AnOGAAAA:8
 a=VwQbUJbxAAAA:8 a=_PjiPlVerWLE5qlwrMEA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: giJb1vv6J65Be0l-b-MucB4-p0QJNYmV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_062022_184966_6191DC4D 
X-CRM114-Status: GOOD (  15.71  )
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

On Wed, Jul 08, 2026 at 02:54:21PM +0200, Mattijs Korpershoek wrote:
> From: Sriram Dash <quic_sriramd@quicinc.com>
> 
> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM.
> The driver requests resources operations over SCMI using power protocols.
> 
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power on/off.
> 
> Power domain "usb_core" controls the GDSC, resets, and TLMM (GPIOs)
> whereas power domain "usb_transfer" controls clocks and interconnects.
> 
> In this variant, two disjoint sets of resources are modeled against
> the power domain suppliers which can be turned on/off to achieve modeled
> device states. Two modeled low power states d1 and d3 are supported.
> 
> transition: d0 <--> d3  :: both core and transfer suppliers
> transition: d0 <--> d1  :: only transfer supplier

Sashiko warns about PM resource leaks and those warnings seems legit.

> 
> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 175 ++++++++++++++++++++++++++++----
>  1 file changed, 155 insertions(+), 20 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
