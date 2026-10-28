Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3577606A31F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=f9nCxvIb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=gDLvL3Vz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WBH43oAG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TK/JS72HKi5hwLLyXCuE5rOU/ciWLxYMtmBtC+gvmN4=; b=f9nCxvIbSSMBt3ARzPWRoDLOO5
	zOz81GgMIoIcNEhuCbBu1r/8uY64e3gHcoQ896XpU2+kkDZ5re7wfzA8/ndoXxDaWvV1QtQGkV+d0
	1Ii0brmRP043boWhmgVhC66ea8OAIysUSGRWfvQVRK0hshw7chp4PvYG6XG0TfJ42oQapsQShZsVX
	MptPJnBb1raZSLFKJYy/SgPRi7BNeC7NyRqAxOucuy2VJ2Zn6aE5Haiw35ycpzXkgz3YeBgeeHm/r
	64RooXneu+HXiAjKGhl2qfqb4mywsGq0WhZEcyFlXgQ+J1IcwDgBGyjtl7TimlBOpmMd9J3JU5KXA
	l6E/E2bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5ax-00000007OGL-343Y;
	Wed, 28 Oct 2026 15:29:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5av-00000007OF9-391V
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:29:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SF9vTg4164829
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:29:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iQrl8WknYAEfdiOkOet54umz
	UF0swLaPr/vomAPeW8U=; b=gDLvL3VzhU5Bp5i7n7BerrWt7HmdtMRSMLDxihoA
	TT6qp7GW1PWTHZef3cBSY0Z4eqcJ+t2gSfqS9mXCG2ckezUJnBDiq9jyXD2bfyIz
	8PRSq8dFkSNcktui6PoAs6YH+55J6BFZzSEYKNqRe5JvEnKzQxHpLzYfyNIhyhXE
	TYNNnVvbn22KxAnjZ9l/EdNuzyMj8tix5hVi5aM9TKZd1dMp2BQS7+8129xAN/Ah
	G/6o17oOEq+PQQLyz45NxcgdyMXr09p2NGMVeW4rcSYeo5LX4zjogvcn+huo6B3d
	5/UH2Wj+ARLhCQmA13p+AoiUWJ+hy9aahD1PiG37Q9PYsQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkhtngkbg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:29:40 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-988bbb0ed9aso912086241.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201380; x=1793806180; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=iQrl8WknYAEfdiOkOet54umzUF0swLaPr/vomAPeW8U=;
        b=WBH43oAGBu7hE9EnUhfiibNWjz7aYMsQfwEA71aCD2xFkYkDm7917NoJUZsn3dL27w
         VA3pw0/uLovAkN61W+eek56E7/ToUnscFQ+uuzKJEoN2KVnryUWCWUHmU/Jz3cBcUEQt
         uBTUKKcnszu8G7Fyk7vKKNU1sKTf3J2215h+3pQio+UbQ9WUs7tTQDZ2LEsUPP5Ni1Ds
         TZ3VzC3NkanT/6D3cPYCh7YnSIcUajF+qEnqz4v44X0Hb7/qLL4faKTL/Pdmw5sQEqsg
         k0ic+nEl3E7KnZlxnTeYYczLlPMgq8yH7WEUSXbWtHk7xvohEuPphfBhabWg6g5YOh/b
         pvOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201380; x=1793806180;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iQrl8WknYAEfdiOkOet54umzUF0swLaPr/vomAPeW8U=;
        b=1qIROQSGkrfVHWLpVQxUNvlm2wEwf5oUbAFnwilgc4ghGdyUiZLOONMB/MKmO08/Ff
         /uDDhEcz5bJdKPtT2HTw8wDt5eP/0HkrF8o2iSm289gUZze9P8Nkqj9Sr9FMqOl1LHoX
         BlOqloKmxPnatZH9S3+LmPLRkEYeY99nKmI0lqNEpVN8X6r6yVUnm4mONv1kGyyra1O5
         n8j4o1dUgNQh4tTK+4GBRHZ8tSUQ4F3IXP/65dlgNu7nm6y7yo7h8jr68ZVKI9XPRbIx
         qKpHPZo0N73NPYmnN//10iTURGCVpg6kSBQLnWReUhaunPvVqSiIbpFKHzFTlmPjgHDT
         WQtA==
X-Forwarded-Encrypted: i=1; AKwUvBx1/XYDsPsAE7TM32vhcSbwiDwtTkhmo18DcJGpjhYu7Ga9Mqjph7zJgbF4GRflACS8LDk+kVmYwfc=@lists.infradead.org
X-Gm-Message-State: AFq9FYJHkoqjXK1CNcCBDDdKLWoHdgd81N8ecwNUvNP8QZeo348aO+S+
	4/z6sIVaNAi85sOmnXakHP4pAYFqZw9PqJnnSDsxO0uQu4fDrvOuvaEe3OoltIH9WHmHPB3znXp
	x9fja8E+vvtbIV/pRzREFU9TsMwJ6VFv0sYPXubQeGqryao+Kc6MT30km1OGx3mOwQ/30
X-Gm-Gg: AYBFou1OGoAQWzPFbA6gE/2ccyL0QS0wBrr1rHYcJfed1AfkdCeGtHZVUAmzu+urWvo
	pMbzZ5tUkChkcUGL0Cufp6CjGXeWTyoSADP8+FElBtv9jrz0IxcmcTyygf0mHhHe3TzqVIZao+6
	QhCsh6sNjHLVHOWMtkOrA1EwXOnOIFhuDrNEcSBkmCbvp8f57uUW+7WfUyFGWAxgcbG0v0cgTbA
	kPRu0G5V2UZNYbr2ywlwj7o7Lz/WqywXoLLizwA1eLy9RBHHoE8SwcW/aytwSMSHrX+eIRh9XLw
	nvNdWn4p5YQS6W289Ay3ZJAwqdWm1x7ONp+RB8J50FkVTrwKUL3toUz+zt9u73/vQimVUyjfLJr
	qnCiqmMZmbwcyDLGB7HqUuMXi8fxQnG+IUSZZ1bIULttgcwiomqwpQ4501sRkWKReyA==
X-Received: by 2002:a05:6102:4b13:b0:7af:fef2:8ecf with SMTP id ada2fe7eead31-7d03a434b91mr1474843137.8.1793201379872;
        Wed, 28 Oct 2026 08:29:39 -0700 (PDT)
X-Received: by 2002:a05:6102:4b13:b0:7af:fef2:8ecf with SMTP id ada2fe7eead31-7d03a434b91mr1474799137.8.1793201379230;
        Wed, 28 Oct 2026 08:29:39 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a92de010bcsm50884345e9.0.2026.10.28.08.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:29:38 -0700 (PDT)
Date: Wed, 28 Oct 2026 17:29:36 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Subject: Re: [PATCH v23 15/15] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
Message-ID: <s42v57ohmpj55nsmfiae7ornwkh3wtxx6c6gc2c4nd4rlw32xm@xhyhyni73g63>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-15-95f250b18612@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261028-kaanapali-camss-v23-15-95f250b18612@oss.qualcomm.com>
X-Proofpoint-GUID: yyx5EX5eekEnAvh17Xoxs439UMPSJYIH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX2Ar2jhf8YHLj
 zfbCnR1KqRZSsHLbHVqiiR9P8LOLXGreRzT8pBiiVqXltpZFzmnvGa57s18hRS+HiBvK63Vrkue
 QwKhYpetZFVMSgteQw4EfPOnD0SUxP1Uq5u79YCdolXf+5kq1f14esyDv45OJRxK+Rdj2wIQ5e6
 Ca+nyS29ET9E9VuIUuNrZ0Zi4Q29ohSJFJe1mZyX7osoZZQ2NjQ7Pmy7Wxkz3fnNz1DvAB/OKeR
 LbJiP2F7j2jiy1kF8mRdtWBfZVHZJaNQcGXZxDdbXb3YvZEPMmsIiTiHm/4+0fjyZUrVhb3tKBl
 YbdmUrcueejLC/S+mdRmowxKcjLW744LOI+Izl4Owf3++ePiM1Cmn2T2Df7OBHkn4NTZKDZDy1J
 nqh9dc28k3DbQxKX+Hp/MZIa122np8CG+nJPliF1uIC5ChS/mv/JNatLlU+ydJWVl6CpANyb0r6
 IPAIeWtkunLpt1jtRcw==
X-Authority-Analysis: v=2.4 cv=c/A+0h9l c=1 sm=1 tr=0 ts=6ae214e5 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=WWpD2f5wiKzpAssyet0A:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: yyx5EX5eekEnAvh17Xoxs439UMPSJYIH
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX2QxwrVnFJ124
 OGn1rGwietDfbrnfbHPKWMDOaCB6C15S4XYcM2KEwrN2tzXVcZYRmB64O4RoceHkq/xVdYNGP6H
 9czGC7DXmXY0isT10f0BHKBbPeQ0kPw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082941_790050_110C72B5 
X-CRM114-Status: GOOD (  10.79  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-28 08:20:49, Hangxiang Ma wrote:
> Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.
> 
> The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
> DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
> lane mode on a rework camera module.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
